.class Lcom/coui/appcompat/textview/COUIAutoCompleteTextView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView$1;->a:Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView$1;->a:Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->J:I

    iget-object p0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView$1;->a:Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->invalidate()V

    return-void
.end method
