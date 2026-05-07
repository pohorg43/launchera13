.class public interface abstract Lcom/oplus/card/helper/SmartEngineHelper$CardErrorCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/card/helper/SmartEngineHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CardErrorCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/card/helper/SmartEngineHelper$CardErrorCallback$DefaultImpls;
    }
.end annotation


# direct methods
.method public static synthetic access$checkCardModel$jd(Lcom/oplus/card/helper/SmartEngineHelper$CardErrorCallback;Lcom/oplus/card/manager/domain/model/CardModel;Ljava/lang/String;)Z
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/oplus/card/helper/SmartEngineHelper$CardErrorCallback;->checkCardModel(Lcom/oplus/card/manager/domain/model/CardModel;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public checkCardModel(Lcom/oplus/card/manager/domain/model/CardModel;Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmDefault;
    .end annotation

    const-string p0, "cardName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_d

    return v0

    :cond_d
    if-nez p1, :cond_10

    return v0

    :cond_10
    const-string p0, "&"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x6

    invoke-static {p2, p0, v0, v0, v1}, Lp3/k;->z(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_23

    return v0

    :cond_23
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lp3/g;->f(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/model/CardModel;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-nez p2, :cond_35

    goto :goto_6b

    :cond_35
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v1, :cond_6b

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lp3/g;->f(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/model/CardModel;->getCardId()I

    move-result v1

    if-nez p2, :cond_4c

    goto :goto_6b

    :cond_4c
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v1, :cond_6b

    const/4 p2, 0x2

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lp3/g;->f(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/model/CardModel;->getHostId()I

    move-result p1

    if-nez p0, :cond_64

    goto :goto_6b

    :cond_64
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p1, :cond_6b

    move v0, v2

    :cond_6b
    :goto_6b
    return v0
.end method

.method public abstract onCall(Ljava/lang/String;I)V
.end method
