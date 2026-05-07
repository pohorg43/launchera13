.class Lcom/coui/appcompat/chip/COUIChip$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/chip/COUIChip;->d(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/chip/COUIChip;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/chip/COUIChip;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/chip/COUIChip$5;->a:Lcom/coui/appcompat/chip/COUIChip;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/chip/COUIChip$5;->a:Lcom/coui/appcompat/chip/COUIChip;

    iget p1, p0, Lcom/coui/appcompat/chip/COUIChip;->h:I

    iget v0, p0, Lcom/coui/appcompat/chip/COUIChip;->d:I

    if-eq p1, v0, :cond_f

    iget v0, p0, Lcom/coui/appcompat/chip/COUIChip;->c:I

    if-ne p1, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    if-eqz p1, :cond_15

    invoke-virtual {p0}, Lcom/coui/appcompat/chip/COUIChip;->f()V

    :cond_15
    return-void
.end method
