import React, { useState, useEffect } from "react";
import { Service } from "rsi-react-web-components";

import EmailVerification from "../emailverification";
import CheckoutOrder from "./CheckoutOrder";
import OnlinePayment from "./OnlinePayment";

const EPayment = (props) => {
  const { module, partner, initialContact={}, initialStep=0, cancelPayment } = props;

  const goBack = () => {
    props.history.goBack();
  };

  const updateContact = (contact) => {
    setContact(contact);
    moveNext();
  };

  const moveNext = () => {
    setStep((prevStep) =>
      prevStep + 1 !== pages.length ? prevStep + 1 : prevStep
    );
  };

  const movePrevious = () => {
    setStep((prevStep) =>
      prevStep - 1 >= 0 ? prevStep - 1 : prevStep
    );
  };

  const checkoutOrder = (bill) => {
    setBill(bill);
    moveNext();
  };

  const createPaymentOrder = (payee) => {
    setLoading(true);
    setError(null);

    const createPo = async () => {
      const b = { ...bill };
      b.paidby = payee.paidby;
      b.paidbyaddress = payee.paidbyaddress;
      b.email = contact.email;
      b.mobileno = contact.mobileno;
      const svc = await Service.lookupAsync(`${partner.id}:EPaymentService`);
      return await svc.createPaymentOrder(b);
    }

    createPo().then(po => {
      setPo(po);
      moveNext();
      setLoading(false);
    }).catch(err => {
      setError(err.toString());
      setLoading(false);
    });
  };

  const onCancelBilling = (cancelStep = 0) => {
    if (cancelPayment) {
      cancelPayment();
    } else {
      movePrevious();
    }
  }

  const pages = [
    { name: "verifyemail", title: "Email Verification", component: EmailVerification, actions: {onCancel: goBack, onVerify: updateContact} },
    { name: "billing", title: module.title, component: module.component, actions: { onCancel: onCancelBilling, onSubmit: checkoutOrder } },
    { name: "checkout", title: "Checkout Order", component: CheckoutOrder, actions: { onCancel: movePrevious, onSubmit: createPaymentOrder } },
    { name: "payment", title: "Online Payment", component: OnlinePayment, actions: { onCancel: movePrevious, onSubmit: ()=>{} } }
  ];

  const [loading, setLoading] = useState(false);
  const [error, setError] = useState();
  const [step, setStep] = useState(initialStep);
  const [page, setPage] = useState(pages[initialStep]);
  const [contact, setContact] = useState(initialContact);
  const [bill, setBill] = useState();
  const [po, setPo] = useState();
  const [cancelStep, setCancelStep] = useState(0);

  useEffect(() => {
    const page = pages[step];
    setPage(page);
  }, [step]);

  const Component = page.component;
  const compProps = { contact, bill, po };

  return (
    <Component
      {...props}
      {...compProps}
      {...page.actions}
      error={error}
      module={module}
      loading={loading}
      page={page}
      initialStep={cancelStep}
    />

  );
};

export default EPayment;
