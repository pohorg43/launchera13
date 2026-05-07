.class public final Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties$BG_SELECTED_PROGRESS$1;
.super Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty<",
        "Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "double_select_progress"

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;)Ljava/lang/Float;
    .registers 2

    const-string p0, "v"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->getBackgroundSelectedProgress()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Float;
    .registers 2

    check-cast p1, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties$BG_SELECTED_PROGRESS$1;->get(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties$BG_SELECTED_PROGRESS$1;->get(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;F)V
    .registers 11

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;->isSingleOptions()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1, p2}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->updateSingleBackgroundSelectedProgress(F)V

    goto :goto_28

    :cond_f
    invoke-virtual {p0}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;->getBasicStartFraction()F

    move-result v3

    invoke-virtual {p0}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;->getRightStartFraction()F

    move-result v4

    invoke-virtual {p0}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;->getBasicEndFraction()F

    move-result v5

    invoke-virtual {p0}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;->getRightEndFraction()F

    move-result v6

    invoke-virtual {p0}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;->isLeftAreaSelect()Z

    move-result v7

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v1 .. v7}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->updateDoubleBackgroundSelectedProgress(FFFFFZ)V

    :goto_28
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties$BG_SELECTED_PROGRESS$1;->setValue(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;F)V

    return-void
.end method
