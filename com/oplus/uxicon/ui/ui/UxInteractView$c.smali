.class public Lcom/oplus/uxicon/ui/ui/UxInteractView$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/uxicon/ui/ui/UxInteractView;->setTextViewGuideListener(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/oplus/uxicon/ui/ui/UxInteractView;


# direct methods
.method public constructor <init>(Lcom/oplus/uxicon/ui/ui/UxInteractView;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$c;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$c;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->access$100(Lcom/oplus/uxicon/ui/ui/UxInteractView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_35

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$c;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->access$200(Lcom/oplus/uxicon/ui/ui/UxInteractView;)Lcom/coui/appcompat/seekbar/COUISeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getProgress()I

    move-result v0

    const/16 v2, 0x30

    if-eq v0, v2, :cond_35

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$c;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->access$200(Lcom/oplus/uxicon/ui/ui/UxInteractView;)Lcom/coui/appcompat/seekbar/COUISeekBar;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setProgress(I)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$c;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    invoke-static {p1, v1}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->access$302(Lcom/oplus/uxicon/ui/ui/UxInteractView;Z)Z

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$c;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->access$400(Lcom/oplus/uxicon/ui/ui/UxInteractView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$c;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    invoke-static {p0}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->access$100(Lcom/oplus/uxicon/ui/ui/UxInteractView;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p1, v0, p0, v1}, Lb/h;->updateTextViewGuide(Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    goto :goto_a3

    :cond_35
    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$c;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    iget-object v2, v0, Lb/h;->mFgReset:Landroid/widget/TextView;

    if-ne p1, v2, :cond_5b

    iget-object v0, v0, Lb/h;->mForegroundSeekBar:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getProgress()I

    move-result v0

    const/16 v2, 0x64

    if-eq v0, v2, :cond_5b

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$c;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    iget-object p1, p1, Lb/h;->mForegroundSeekBar:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {p1, v2}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setProgress(I)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$c;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    invoke-static {p1, v1}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->access$502(Lcom/oplus/uxicon/ui/ui/UxInteractView;Z)Z

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$c;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    iget-object p1, p0, Lb/h;->mTvFgSize:Landroid/widget/TextView;

    iget-object v0, p0, Lb/h;->mFgReset:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v0, v1}, Lb/h;->updateTextViewGuide(Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    goto :goto_a3

    :cond_5b
    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$c;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    iget-object v2, v0, Lb/h;->mBgReset:Landroid/widget/TextView;

    if-ne p1, v2, :cond_a3

    iget-object p1, v0, Lb/h;->mIconSizeBar:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getProgress()I

    move-result p1

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$c;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->access$600(Lcom/oplus/uxicon/ui/ui/UxInteractView;)I

    move-result v0

    if-eq p1, v0, :cond_a3

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$c;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    iget-object v0, p1, Lb/h;->mIconSizeBar:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->access$600(Lcom/oplus/uxicon/ui/ui/UxInteractView;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setProgress(I)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$c;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    invoke-static {p1, v1}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->access$702(Lcom/oplus/uxicon/ui/ui/UxInteractView;Z)Z

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$c;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    iget-object v0, p1, Lb/h;->mTvIconSize:Landroid/widget/TextView;

    iget-object v2, p1, Lb/h;->mBgReset:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v2, v1}, Lb/h;->updateTextViewGuide(Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$c;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$c;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    invoke-virtual {v0}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->getPreferenceThemeKey()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$c;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    iget-object p0, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {p0}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->saveIconSize(Ljava/lang/String;I)V

    :cond_a3
    :goto_a3
    return-void
.end method
