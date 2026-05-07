.class Lcom/coui/appcompat/panel/COUIBottomSheetDialog$11;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm1/g;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$11;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringActivate(Lm1/d;)V
    .registers 2

    return-void
.end method

.method public onSpringAtRest(Lm1/d;)V
    .registers 2

    return-void
.end method

.method public onSpringEndStateChange(Lm1/d;)V
    .registers 2

    return-void
.end method

.method public onSpringUpdate(Lm1/d;)V
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$11;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->x:Lm1/d;

    if-eqz v1, :cond_21

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->y:Landroid/view/View;

    if-nez v0, :cond_b

    goto :goto_21

    :cond_b
    iget-object p1, p1, Lm1/d;->c:Lm1/d$b;

    iget-wide v2, p1, Lm1/d$b;->a:D

    double-to-int p1, v2

    const/16 v0, 0x64

    if-lt p1, v0, :cond_19

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lm1/d;->e(D)Lm1/d;

    :cond_19
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$11;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->y:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_21
    :goto_21
    return-void
.end method
