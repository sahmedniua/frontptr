import React from "react";
import { FormStep } from "@egovernments/digit-ui-react-components";

const SelectDetails = ({ t, config, onSelect }) => {
  return <FormStep config={config} onSelect={details => onSelect({ details })} t={t}></FormStep>;
};

export default SelectDetails;
