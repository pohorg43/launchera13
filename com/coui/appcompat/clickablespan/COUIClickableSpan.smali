.class public Lcom/coui/appcompat/clickablespan/COUIClickableSpan;
.super Landroid/text/style/ClickableSpan;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/clickablespan/COUIClickableSpan$SpannableStrClickListener;
    }
.end annotation


# instance fields
.field public a:Lcom/coui/appcompat/clickablespan/COUIClickableSpan$SpannableStrClickListener;

.field public b:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$color;->coui_clickable_text_color:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/clickablespan/COUIClickableSpan;->b:Landroid/content/res/ColorStateList;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/clickablespan/COUIClickableSpan;->a:Lcom/coui/appcompat/clickablespan/COUIClickableSpan$SpannableStrClickListener;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/coui/appcompat/clickablespan/COUIClickableSpan$SpannableStrClickListener;->a()V

    :cond_7
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 4

    iget-object p0, p0, Lcom/coui/appcompat/clickablespan/COUIClickableSpan;->b:Landroid/content/res/ColorStateList;

    iget-object v0, p1, Landroid/text/TextPaint;->drawableState:[I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
