create table TaskVariableImpl (
    id bigint generated by default as identity,
    modificationDate timestamp,
    name varchar(255),
    processId varchar(255),
    processInstanceId bigint,
    taskId bigint,
    type integer,
    value varchar(4000),
    primary key (id)
);

create table QueryDefinitionStore (
    id bigint generated by default as identity,
    qExpression clob(65535),
    qName varchar(255),
    qSource varchar(255),
    qTarget varchar(255),
    primary key (id)
);

create unique index UK_4ry5gt77jvq0orfttsoghta2j on QueryDefinitionStore (qName);

create index IDX_VInstLog_pInstId on VariableInstanceLog(processInstanceId);
create index IDX_VInstLog_varId on VariableInstanceLog(variableId);
create index IDX_VInstLog_pId on VariableInstanceLog(processId);

create index IDX_NInstLog_pInstId on NodeInstanceLog(processInstanceId);
create index IDX_NInstLog_nodeType on NodeInstanceLog(nodeType);
create index IDX_NInstLog_pId on NodeInstanceLog(processId);