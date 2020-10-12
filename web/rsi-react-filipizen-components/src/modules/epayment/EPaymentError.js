import React,  { useState, useEffect } from "react";
import {
  Panel,
  Spacer,
  Button,
  Title,
  Card,
  Image,
  Label,
  Content,
  getUrlParameter
} from "rsi-react-web-components";

const EPaymentError = ({partner, history, location}) => {
  const [message, setMessage] = useState();
  const [code, setCode] = useState();

  const onClose = () => {
    history.replace(`/partner/${partner.name}/services`, {partner});
  };

  useEffect(() => {
    setCode(getUrlParameter(location, "code"));
    setMessage(getUrlParameter(location, "message"));
  }, []);

  return (
    <Panel center>
      <Panel style={{width: 400, padding: 15}}>
        <Card>
          <Content center>
              <Image src="/assets/error.png" width={75} alt="success" />
              <Spacer />
              <Title>Processing Error</Title>
              <Spacer />
              <Label labelStyle={styles.text}>Our partner was not able to process your payment.</Label>
              <Label labelStyle={styles.text}>Make sure to verify that your credentials are correct upon submitting your payment.</Label>
              {code && <h4 style={{marginBottom: 3}}>Error {code}</h4>}
              {message && <div>{message}</div>}
              <Spacer />
              <Label labelStyle={styles.text}>
                Contact us at (032) 2313230 for assistance.
              </Label>
              <Spacer />
              <Button variant="text" caption="OK" onClick={onClose} />
          </Content>
        </Card>
      </Panel>
    </Panel>
  );
};

const styles = {
  text: {
    display: "block",
    textAlign: "center"
  }
};

export default EPaymentError;
