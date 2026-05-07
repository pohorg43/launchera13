.class public Lcom/android/launcher/views/AlertPanelView$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/views/AlertPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mActionCallBack:Lcom/android/launcher/views/AlertPanelView$ActionCallBack;

.field private mContext:Landroid/content/Context;

.field private mCustomContentView:Landroid/view/View;

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mPositiveButtonText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/views/AlertPanelView$Builder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public create(Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;)Lcom/android/launcher/views/AlertPanelView;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/views/AlertPanelView$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/launcher/views/AlertPanelView;->access$100(Landroid/content/Context;Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;)Lcom/android/launcher/views/AlertPanelView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/views/AlertPanelView$Builder;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_f

    iget-object v1, p1, Lcom/android/launcher/views/AlertPanelView;->mPositiveBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    iget-object v0, p0, Lcom/android/launcher/views/AlertPanelView$Builder;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_18

    iget-object v1, p1, Lcom/android/launcher/views/AlertPanelView;->mNegativeBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_18
    iget-object v0, p0, Lcom/android/launcher/views/AlertPanelView$Builder;->mCustomContentView:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/android/launcher/views/AlertPanelView;->access$200(Lcom/android/launcher/views/AlertPanelView;Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/launcher/views/AlertPanelView$Builder;->mActionCallBack:Lcom/android/launcher/views/AlertPanelView$ActionCallBack;

    invoke-static {p1, p0}, Lcom/android/launcher/views/AlertPanelView;->access$300(Lcom/android/launcher/views/AlertPanelView;Lcom/android/launcher/views/AlertPanelView$ActionCallBack;)V

    return-object p1
.end method

.method public setActionCallBack(Lcom/android/launcher/views/AlertPanelView$ActionCallBack;)Lcom/android/launcher/views/AlertPanelView$Builder;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/views/AlertPanelView$Builder;->mActionCallBack:Lcom/android/launcher/views/AlertPanelView$ActionCallBack;

    return-object p0
.end method

.method public setCustomContentView(Landroid/view/View;)Lcom/android/launcher/views/AlertPanelView$Builder;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/views/AlertPanelView$Builder;->mCustomContentView:Landroid/view/View;

    return-object p0
.end method

.method public setNegativeButtonText(Ljava/lang/CharSequence;)Lcom/android/launcher/views/AlertPanelView$Builder;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/views/AlertPanelView$Builder;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setPositiveButtonText(Ljava/lang/CharSequence;)Lcom/android/launcher/views/AlertPanelView$Builder;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/views/AlertPanelView$Builder;->mPositiveButtonText:Ljava/lang/CharSequence;

    return-object p0
.end method
