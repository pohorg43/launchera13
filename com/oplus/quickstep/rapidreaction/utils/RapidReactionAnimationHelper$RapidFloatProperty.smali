.class public Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;
.super Landroid/util/FloatProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RapidFloatProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/FloatProperty<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private basicEndFraction:F

.field private basicStartFraction:F

.field private isLeftAreaSelect:Z

.field private isSingleOptions:Z

.field private rightEndFraction:F

.field private rightStartFraction:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;->isLeftAreaSelect:Z

    iput-boolean p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;->isSingleOptions:Z

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Float;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final getBasicEndFraction()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;->basicEndFraction:F

    return p0
.end method

.method public final getBasicStartFraction()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;->basicStartFraction:F

    return p0
.end method

.method public final getRightEndFraction()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;->rightEndFraction:F

    return p0
.end method

.method public final getRightStartFraction()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;->rightStartFraction:F

    return p0
.end method

.method public final isLeftAreaSelect()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;->isLeftAreaSelect:Z

    return p0
.end method

.method public final isSingleOptions()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;->isSingleOptions:Z

    return p0
.end method

.method public final setBasicEndFraction(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;->basicEndFraction:F

    return-void
.end method

.method public final setBasicStartFraction(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;->basicStartFraction:F

    return-void
.end method

.method public final setLeftAreaSelect(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;->isLeftAreaSelect:Z

    return-void
.end method

.method public final setRightEndFraction(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;->rightEndFraction:F

    return-void
.end method

.method public final setRightStartFraction(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;->rightStartFraction:F

    return-void
.end method

.method public final setSingleOptions(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;->isSingleOptions:Z

    return-void
.end method

.method public setValue(Ljava/lang/Object;F)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    return-void
.end method
