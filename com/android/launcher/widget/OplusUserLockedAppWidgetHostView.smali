.class public Lcom/android/launcher/widget/OplusUserLockedAppWidgetHostView;
.super Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;
.source ""


# instance fields
.field private mDefaultView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getDefaultView()Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/widget/OplusUserLockedAppWidgetHostView;->mDefaultView:Landroid/view/View;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d004b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/widget/OplusUserLockedAppWidgetHostView;->mDefaultView:Landroid/view/View;

    :cond_10
    iget-object p0, p0, Lcom/android/launcher/widget/OplusUserLockedAppWidgetHostView;->mDefaultView:Landroid/view/View;

    return-object p0
.end method

.method public setBackgroundResource(I)V
    .registers 2

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public updateAppWidgetSize(Landroid/os/Bundle;IIII)V
    .registers 6

    return-void
.end method
