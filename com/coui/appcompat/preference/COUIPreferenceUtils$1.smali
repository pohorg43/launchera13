.class final Lcom/coui/appcompat/preference/COUIPreferenceUtils$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/preference/COUIPreferenceUtils;->c(Landroid/content/Context;Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceUtils$1;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceUtils$1;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceUtils$1;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUIPreferenceUtils$1;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v2, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_29

    if-le p2, v0, :cond_29

    if-lt p2, v1, :cond_27

    goto :goto_29

    :cond_27
    move p2, v3

    goto :goto_2a

    :cond_29
    :goto_29
    move p2, v2

    :goto_2a
    if-eqz p1, :cond_3f

    if-eq p1, v2, :cond_32

    const/4 p2, 0x3

    if-eq p1, p2, :cond_32

    goto :goto_4c

    :cond_32
    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceUtils$1;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setPressed(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreferenceUtils$1;->a:Landroid/widget/TextView;

    const-wide/16 p1, 0x46

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->postInvalidateDelayed(J)V

    goto :goto_4c

    :cond_3f
    if-eqz p2, :cond_42

    return v3

    :cond_42
    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceUtils$1;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setPressed(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreferenceUtils$1;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :goto_4c
    return v3
.end method
