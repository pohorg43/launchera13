.class public final Lcom/oplus/card/helper/SmartEngineHelper$CardErrorCallback$DefaultImpls;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/card/helper/SmartEngineHelper$CardErrorCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static checkCardModel(Lcom/oplus/card/helper/SmartEngineHelper$CardErrorCallback;Lcom/oplus/card/manager/domain/model/CardModel;Ljava/lang/String;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmDefault;
    .end annotation

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/oplus/card/helper/SmartEngineHelper$CardErrorCallback;->access$checkCardModel$jd(Lcom/oplus/card/helper/SmartEngineHelper$CardErrorCallback;Lcom/oplus/card/manager/domain/model/CardModel;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
