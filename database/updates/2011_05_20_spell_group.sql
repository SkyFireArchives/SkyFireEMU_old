-- Fixed Blessing of Kings and Blessing of Might stack rules with each other
-- By ZenitH

INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('1252', '79062'), ('1252', '79063');

INSERT INTO `spell_group_stack_rules` (`group_id`, `stack_rule`) VALUES ('1252', '2');

INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('1253', '79102'), ('1253', '79101');

INSERT INTO `spell_group_stack_rules` (`group_id`, `stack_rule`) VALUES ('1253', '2');

INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('1254', '79101'), ('1254', '79102'), ('1254', '79062'), ('1254', '79063');

INSERT INTO `spell_group_stack_rules` (`group_id`, `stack_rule`) VALUES ('1254', '2');

-- Mark of the Wild stack fix

INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('1251', '79060'), ('1251', '79061');

INSERT INTO `spell_group_stack_rules` (`group_id`, `stack_rule`) VALUES ('1251', '2');