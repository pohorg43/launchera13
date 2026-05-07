.class public Lcom/oplus/ovoicecommon/bean/OVoiceSkillCardFactory;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "OVSS.OVoiceSkillCardFactory"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createConfirmCard(Ljava/lang/String;Lcom/oplus/ovoicecommon/bean/ConfirmParameter;)Lcom/oplus/ovoicecommon/bean/ISkillInteractionCard;
    .registers 4

    new-instance v0, Lcom/oplus/ovoicecommon/bean/SkillInteractionCard;

    invoke-direct {v0}, Lcom/oplus/ovoicecommon/bean/SkillInteractionCard;-><init>()V

    new-instance v1, Lcom/oplus/ovoicecommon/bean/ConfirmPayload;

    invoke-direct {v1, p0}, Lcom/oplus/ovoicecommon/bean/ConfirmPayload;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oplus/ovoicecommon/bean/SkillInteractionCard;->setPayload(Lcom/oplus/ovoicecommon/bean/InteractionCardPayload;)V

    invoke-virtual {p1}, Lcom/oplus/ovoicecommon/bean/ConfirmParameter;->getTtsText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/oplus/ovoicecommon/bean/ConfirmPayload;->setTtsText(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/ovoicecommon/bean/ConfirmParameter;->getDisplayText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/oplus/ovoicecommon/bean/ConfirmPayload;->setDisplayText(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/ovoicecommon/bean/ConfirmParameter;->getItemName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/oplus/ovoicecommon/bean/ConfirmPayload;->setItemName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/ovoicecommon/bean/ConfirmParameter;->getConfirmText()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2b

    const-string p0, "确认"

    goto :goto_2f

    :cond_2b
    invoke-virtual {p1}, Lcom/oplus/ovoicecommon/bean/ConfirmParameter;->getConfirmText()Ljava/lang/String;

    move-result-object p0

    :goto_2f
    invoke-virtual {v1, p0}, Lcom/oplus/ovoicecommon/bean/ConfirmPayload;->setConfirmText(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/ovoicecommon/bean/ConfirmParameter;->getCancelText()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3b

    const-string p0, "取消"

    goto :goto_3f

    :cond_3b
    invoke-virtual {p1}, Lcom/oplus/ovoicecommon/bean/ConfirmParameter;->getCancelText()Ljava/lang/String;

    move-result-object p0

    :goto_3f
    invoke-virtual {v1, p0}, Lcom/oplus/ovoicecommon/bean/ConfirmPayload;->setCancelText(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createConfirmResultCard(Ljava/lang/String;Ljava/lang/String;Z)Lcom/oplus/ovoicecommon/bean/ISkillResultCard;
    .registers 5

    new-instance v0, Lcom/oplus/ovoicecommon/bean/SkillInteractionResultCard;

    invoke-direct {v0}, Lcom/oplus/ovoicecommon/bean/SkillInteractionResultCard;-><init>()V

    new-instance v1, Lcom/oplus/ovoicecommon/bean/ConfirmResultPayload;

    invoke-direct {v1, p0}, Lcom/oplus/ovoicecommon/bean/ConfirmResultPayload;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oplus/ovoicecommon/bean/SkillInteractionResultCard;->setPayload(Lcom/oplus/ovoicecommon/bean/InteractionResultCardPayload;)V

    invoke-virtual {v1, p1}, Lcom/oplus/ovoicecommon/bean/ConfirmResultPayload;->setItemName(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/oplus/ovoicecommon/bean/ConfirmResultPayload;->setItemValue(Z)V

    return-object v0
.end method

.method public static createListContainerCard(Ljava/lang/String;Lcom/oplus/ovoicecommon/bean/ListContainerParameter;)Lcom/oplus/ovoicecommon/bean/ISkillInteractionCard;
    .registers 8

    new-instance v0, Lcom/oplus/ovoicecommon/bean/SkillInteractionCard;

    invoke-direct {v0}, Lcom/oplus/ovoicecommon/bean/SkillInteractionCard;-><init>()V

    new-instance v1, Lcom/oplus/ovoicecommon/bean/ListContainerPayload;

    invoke-direct {v1, p0}, Lcom/oplus/ovoicecommon/bean/ListContainerPayload;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oplus/ovoicecommon/bean/SkillInteractionCard;->setPayload(Lcom/oplus/ovoicecommon/bean/InteractionCardPayload;)V

    invoke-virtual {p1}, Lcom/oplus/ovoicecommon/bean/ListContainerParameter;->getDisplayText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/ovoicecommon/bean/ListContainerPayload;->setDisplayText(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/ovoicecommon/bean/ListContainerParameter;->getItemName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/ovoicecommon/bean/ListContainerPayload;->setItemName(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/oplus/ovoicecommon/bean/ListContainerParameter;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_28
    :goto_28
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/oplus/ovoicecommon/bean/ToggleParameter;

    if-eqz v4, :cond_56

    check-cast v3, Lcom/oplus/ovoicecommon/bean/ToggleParameter;

    new-instance v4, Lcom/oplus/ovoicecommon/bean/TogglePayload;

    invoke-direct {v4, p0}, Lcom/oplus/ovoicecommon/bean/TogglePayload;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/oplus/ovoicecommon/bean/ToggleParameter;->getItemName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oplus/ovoicecommon/bean/TogglePayload;->setItemName(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/oplus/ovoicecommon/bean/ToggleParameter;->getItemValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/oplus/ovoicecommon/bean/TogglePayload;->setItemValue(Z)V

    invoke-virtual {v3}, Lcom/oplus/ovoicecommon/bean/ToggleParameter;->getItemText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/oplus/ovoicecommon/bean/TogglePayload;->setItemText(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_56
    instance-of v4, v3, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;

    if-eqz v4, :cond_8d

    check-cast v3, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;

    new-instance v4, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;

    invoke-direct {v4, p0}, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;->getItemName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->setItemName(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;->getItemText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->setItemText(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;->getItemValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->setItemValue(I)V

    invoke-virtual {v3}, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;->getMinValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->setMinValue(I)V

    invoke-virtual {v3}, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;->getMaxValue()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->setMaxValue(I)V

    const-string v3, "Normal"

    invoke-virtual {v4, v3}, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->setStyleType(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_8d
    instance-of v4, v3, Lcom/oplus/ovoicecommon/bean/ConfirmParameter;

    if-eqz v4, :cond_28

    check-cast v3, Lcom/oplus/ovoicecommon/bean/ConfirmParameter;

    new-instance v4, Lcom/oplus/ovoicecommon/bean/ConfirmPayload;

    invoke-direct {v4, p0}, Lcom/oplus/ovoicecommon/bean/ConfirmPayload;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/oplus/ovoicecommon/bean/ConfirmParameter;->getItemName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oplus/ovoicecommon/bean/ConfirmPayload;->setItemName(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/oplus/ovoicecommon/bean/ConfirmParameter;->getConfirmText()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_a8

    const-string v5, "确认"

    goto :goto_ac

    :cond_a8
    invoke-virtual {v3}, Lcom/oplus/ovoicecommon/bean/ConfirmParameter;->getConfirmText()Ljava/lang/String;

    move-result-object v5

    :goto_ac
    invoke-virtual {v4, v5}, Lcom/oplus/ovoicecommon/bean/ConfirmPayload;->setConfirmText(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/oplus/ovoicecommon/bean/ConfirmParameter;->getCancelText()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_b8

    const-string v3, "取消"

    goto :goto_bc

    :cond_b8
    invoke-virtual {v3}, Lcom/oplus/ovoicecommon/bean/ConfirmParameter;->getCancelText()Ljava/lang/String;

    move-result-object v3

    :goto_bc
    invoke-virtual {v4, v3}, Lcom/oplus/ovoicecommon/bean/ConfirmPayload;->setCancelText(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    :cond_c4
    invoke-virtual {v1, v2}, Lcom/oplus/ovoicecommon/bean/ListContainerPayload;->setList(Ljava/util/List;)V

    return-object v0
.end method

.method public static createListContainerResultCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/oplus/ovoicecommon/bean/ISkillResultCard;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oplus/ovoicecommon/bean/InteractionResultCardPayload;",
            ">;)",
            "Lcom/oplus/ovoicecommon/bean/ISkillResultCard;"
        }
    .end annotation

    new-instance v0, Lcom/oplus/ovoicecommon/bean/SkillInteractionResultCard;

    invoke-direct {v0}, Lcom/oplus/ovoicecommon/bean/SkillInteractionResultCard;-><init>()V

    new-instance v1, Lcom/oplus/ovoicecommon/bean/ListContainerResultPayload;

    invoke-direct {v1, p0}, Lcom/oplus/ovoicecommon/bean/ListContainerResultPayload;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oplus/ovoicecommon/bean/SkillInteractionResultCard;->setPayload(Lcom/oplus/ovoicecommon/bean/InteractionResultCardPayload;)V

    invoke-virtual {v1, p1}, Lcom/oplus/ovoicecommon/bean/ListContainerResultPayload;->setItemName(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/oplus/ovoicecommon/bean/ListContainerResultPayload;->setList(Ljava/util/List;)V

    return-object v0
.end method

.method public static createSeekbarCard(Ljava/lang/String;Lcom/oplus/ovoicecommon/bean/SeekbarParameter;)Lcom/oplus/ovoicecommon/bean/ISkillInteractionCard;
    .registers 4

    new-instance v0, Lcom/oplus/ovoicecommon/bean/SkillInteractionCard;

    invoke-direct {v0}, Lcom/oplus/ovoicecommon/bean/SkillInteractionCard;-><init>()V

    new-instance v1, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;

    invoke-direct {v1, p0}, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oplus/ovoicecommon/bean/SkillInteractionCard;->setPayload(Lcom/oplus/ovoicecommon/bean/InteractionCardPayload;)V

    invoke-virtual {p1}, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;->getItemName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->setItemName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;->getItemText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->setItemText(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;->getItemValue()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->setItemValue(I)V

    invoke-virtual {p1}, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;->getMinValue()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->setMinValue(I)V

    invoke-virtual {p1}, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;->getMaxValue()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->setMaxValue(I)V

    invoke-virtual {p1}, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;->getTtsText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->setTtsText(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;->getDisplayText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->setDisplayText(Ljava/lang/String;)V

    const-string p0, "Normal"

    invoke-virtual {v1, p0}, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->setStyleType(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createSeekbarResultCard(Ljava/lang/String;Ljava/lang/String;I)Lcom/oplus/ovoicecommon/bean/ISkillResultCard;
    .registers 5

    new-instance v0, Lcom/oplus/ovoicecommon/bean/SkillInteractionResultCard;

    invoke-direct {v0}, Lcom/oplus/ovoicecommon/bean/SkillInteractionResultCard;-><init>()V

    new-instance v1, Lcom/oplus/ovoicecommon/bean/SeekbarResultPayload;

    invoke-direct {v1, p0}, Lcom/oplus/ovoicecommon/bean/SeekbarResultPayload;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oplus/ovoicecommon/bean/SkillInteractionResultCard;->setPayload(Lcom/oplus/ovoicecommon/bean/InteractionResultCardPayload;)V

    invoke-virtual {v1, p1}, Lcom/oplus/ovoicecommon/bean/SeekbarResultPayload;->setItemName(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/oplus/ovoicecommon/bean/SeekbarResultPayload;->setItemValue(I)V

    return-object v0
.end method

.method public static createTTSCard(Ljava/lang/String;)Lcom/oplus/ovoicecommon/bean/ISkillCard;
    .registers 3

    new-instance v0, Lcom/oplus/ovoicecommon/bean/SkillCard;

    invoke-direct {v0}, Lcom/oplus/ovoicecommon/bean/SkillCard;-><init>()V

    new-instance v1, Lcom/oplus/ovoicecommon/bean/TTSPayload;

    invoke-direct {v1}, Lcom/oplus/ovoicecommon/bean/TTSPayload;-><init>()V

    invoke-virtual {v0, v1}, Lcom/oplus/ovoicecommon/bean/SkillCard;->setPayload(Lcom/oplus/ovoicecommon/bean/CardPayload;)V

    invoke-virtual {v1, p0}, Lcom/oplus/ovoicecommon/bean/TTSPayload;->setTtsText(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createTextCard(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/ovoicecommon/bean/ISkillCard;
    .registers 4

    new-instance v0, Lcom/oplus/ovoicecommon/bean/SkillCard;

    invoke-direct {v0}, Lcom/oplus/ovoicecommon/bean/SkillCard;-><init>()V

    new-instance v1, Lcom/oplus/ovoicecommon/bean/TextPayload;

    invoke-direct {v1}, Lcom/oplus/ovoicecommon/bean/TextPayload;-><init>()V

    invoke-virtual {v0, v1}, Lcom/oplus/ovoicecommon/bean/SkillCard;->setPayload(Lcom/oplus/ovoicecommon/bean/CardPayload;)V

    invoke-virtual {v1, p1}, Lcom/oplus/ovoicecommon/bean/TTSPayload;->setTtsText(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/oplus/ovoicecommon/bean/TextPayload;->setDisplayText(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createToggleCard(Ljava/lang/String;Lcom/oplus/ovoicecommon/bean/ToggleParameter;)Lcom/oplus/ovoicecommon/bean/ISkillInteractionCard;
    .registers 4

    new-instance v0, Lcom/oplus/ovoicecommon/bean/SkillInteractionCard;

    invoke-direct {v0}, Lcom/oplus/ovoicecommon/bean/SkillInteractionCard;-><init>()V

    new-instance v1, Lcom/oplus/ovoicecommon/bean/TogglePayload;

    invoke-direct {v1, p0}, Lcom/oplus/ovoicecommon/bean/TogglePayload;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oplus/ovoicecommon/bean/SkillInteractionCard;->setPayload(Lcom/oplus/ovoicecommon/bean/InteractionCardPayload;)V

    invoke-virtual {p1}, Lcom/oplus/ovoicecommon/bean/ToggleParameter;->getItemName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/oplus/ovoicecommon/bean/TogglePayload;->setItemName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/ovoicecommon/bean/ToggleParameter;->getItemValue()Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/oplus/ovoicecommon/bean/TogglePayload;->setItemValue(Z)V

    invoke-virtual {p1}, Lcom/oplus/ovoicecommon/bean/ToggleParameter;->getTtsText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/oplus/ovoicecommon/bean/TogglePayload;->setTtsText(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/ovoicecommon/bean/ToggleParameter;->getDisplayText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/oplus/ovoicecommon/bean/TogglePayload;->setDisplayText(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/ovoicecommon/bean/ToggleParameter;->getItemText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/oplus/ovoicecommon/bean/TogglePayload;->setItemText(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createToggleResultCard(Ljava/lang/String;Ljava/lang/String;Z)Lcom/oplus/ovoicecommon/bean/ISkillResultCard;
    .registers 5

    new-instance v0, Lcom/oplus/ovoicecommon/bean/SkillInteractionResultCard;

    invoke-direct {v0}, Lcom/oplus/ovoicecommon/bean/SkillInteractionResultCard;-><init>()V

    new-instance v1, Lcom/oplus/ovoicecommon/bean/ToggleResultPayload;

    invoke-direct {v1, p0}, Lcom/oplus/ovoicecommon/bean/ToggleResultPayload;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oplus/ovoicecommon/bean/SkillInteractionResultCard;->setPayload(Lcom/oplus/ovoicecommon/bean/InteractionResultCardPayload;)V

    invoke-virtual {v1, p1}, Lcom/oplus/ovoicecommon/bean/ToggleResultPayload;->setItemName(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/oplus/ovoicecommon/bean/ToggleResultPayload;->setItemValue(Z)V

    return-object v0
.end method
