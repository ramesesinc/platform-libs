import React, { useState, useEffect } from "react";
import {
  Panel,
  Button,
  Card,
  Content,
  CardActions,
  Image,
  Label,
  getUrlParameter,
  FormPanel,
  Text,
  currencyFormat,
  Subtitle,
  Service
} from "rsi-react-web-components";

const EPaymentSuccess = (props) => {
  const [payment, setPayment] = useState({});
  const [partner, setPartner] = useState({});

  const loadPartner = (payment) => {
    const svc = Service.lookup("CloudPartnerService");
    svc.findById({id: payment.orgcode}, (err, partner) => {
      if (!err) {
        setPartner(partner);
      }
    })
  }

  useEffect(() => {
    const payment = {
      orgcode: getUrlParameter(props.location, "orgcode"),
      paymentrefid: getUrlParameter(props.location, "paymentrefid"),
      txnno: getUrlParameter(props.location, "txnno"),
      txndate: getUrlParameter(props.location, "txndate"),
      amount: getUrlParameter(props.location, "amount"),
      paypartnerid: getUrlParameter(props.location, "paypartnerid"),
      paidby: getUrlParameter(props.location, "paidby"),
      email: getUrlParameter(props.location, "email"),
    }
    setPayment(payment);
    loadPartner(payment);
  }, []);

  const onClose = () => {
    props.history.replace(`/partner/${partner.name}/services`, {partner});
  };

  return (
      <Card>
        <Content center>
          <Image src="/assets/success.png" width={60} alt="success" />
          <Subtitle style={{fontSize: 24}}>Payment Successful</Subtitle>
          <FormPanel context={payment} handler={setPayment} style={styles.paymentInfoContainer}>
            <Text caption="Transaction #" name="txnno" readOnly={true} />
            <Text caption="Payment Date #" name="txndate" readOnly={true} />
            <Panel style={styles.amountContainer}>
              <label style={styles.amount}>Amount</label>
              <label style={styles.amount}>PHP {currencyFormat(payment.amount)}</label>
            </Panel>
            <Panel center>
              <label style={{fontSize: 10, marginTop: 10}}>Payment Partner</label>
              <Image
                src={`/assets/${payment.paypartnerid}.png`} width={150} />
              <Image />
            </Panel>
          </FormPanel>
          <Label style={{ ...styles.text, ...{ maxWidth: 300 } }}>
            Your e-receipt and tickets will be sent to your email at {payment.email}
          </Label>
          <Label labelStyle={styles.text}>
            Thank you for using this service
          </Label>
          <Label labelStyle={styles.text}>
            For inquiries contact us at 0917-999-0001
          </Label>
          <CardActions>
            <Button caption="Return" onClick={onClose} />
          </CardActions>
        </Content>
      </Card>
  );
};

const styles = {
  text: {
    display: "block",
    textAlign: "center"
  },
  paymentInfoContainer: {
    display: "flex",
    flexDirection: "column",
    padding: 15,
    border: "1px solid #aaa",
    borderRadius: 5,
    width: "100%",
  },
  amountContainer: {
    display: "flex",
    justifyContent: "space-between",
    padding: 10,
    borderBottom: "1px solid #aaa"
  },
  amount: {
    fontWeight: 800
  }
};

export default EPaymentSuccess;
