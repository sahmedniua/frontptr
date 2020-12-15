import { FormStep } from "@egovernments/digit-ui-react-components"

const SelectName = ({ config, onSelect, t }) => {
  return <FormStep config={config} onSelect={onSelect} t={t}></FormStep>
}

export default SelectName;