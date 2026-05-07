.class Lcom/coui/appcompat/chip/COUIChip$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/chip/COUIChip;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/coui/appcompat/chip/COUIChip;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/chip/COUIChip;Z)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/chip/COUIChip$2;->b:Lcom/coui/appcompat/chip/COUIChip;

    iput-boolean p2, p0, Lcom/coui/appcompat/chip/COUIChip$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/chip/COUIChip$2;->b:Lcom/coui/appcompat/chip/COUIChip;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/coui/appcompat/chip/COUIChip;->f:I

    iget-object p1, p0, Lcom/coui/appcompat/chip/COUIChip$2;->b:Lcom/coui/appcompat/chip/COUIChip;

    iget-object v0, p1, Lcom/coui/appcompat/chip/COUIChip;->t:[I

    iget-boolean v1, p0, Lcom/coui/appcompat/chip/COUIChip$2;->a:Z

    xor-int/lit8 v1, v1, 0x1

    iget v2, p1, Lcom/coui/appcompat/chip/COUIChip;->f:I

    aput v2, v0, v1

    new-instance v0, Landroid/content/res/ColorStateList;

    iget-object p0, p0, Lcom/coui/appcompat/chip/COUIChip$2;->b:Lcom/coui/appcompat/chip/COUIChip;

    iget-object v1, p0, Lcom/coui/appcompat/chip/COUIChip;->s:[[I

    iget-object p0, p0, Lcom/coui/appcompat/chip/COUIChip;->t:[I

    invoke-direct {v0, v1, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/chip/Chip;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method
