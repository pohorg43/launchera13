.class public interface abstract Lcom/oplus/smartsdk/ISmartViewApi;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public endAnim(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public endAnim(Landroid/view/View;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public getSmartView(Landroid/content/Context;Lcom/oplus/smartsdk/SmartApiInfo;Lcom/oplus/smartsdk/InflaterCallback;)V
    .registers 4

    return-void
.end method

.method public getView(Landroid/content/Context;Landroid/view/View;Lcom/oplus/smartsdk/SmartApiInfo;Lcom/oplus/smartsdk/GetViewCallback;)V
    .registers 5
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Lcom/oplus/smartsdk/SmartApiInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lcom/oplus/smartsdk/GetViewCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public interceptStartActivity(Lcom/oplus/smartsdk/InterceptStartActivityCallback;)V
    .registers 2
    .param p1  # Lcom/oplus/smartsdk/InterceptStartActivityCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public interceptStartActivityCallback(Lcom/oplus/smartsdk/InterceptClickCallback;)V
    .registers 2
    .param p1  # Lcom/oplus/smartsdk/InterceptClickCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onInVisible(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onRelease(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onVisible(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public pauseAllVideo(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public pauseVideo(Landroid/view/View;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public pauseVideoInList(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    return-void
.end method

.method public playAllVideo(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public playVideo(Landroid/view/View;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public playVideoInList(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    return-void
.end method

.method public refreshUI(Landroid/view/View;[B)V
    .registers 3

    return-void
.end method

.method public refreshUI(Landroid/view/View;[BZ)V
    .registers 4

    return-void
.end method

.method public registerEngineView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public registerErrorCallback(Lcom/oplus/smartsdk/ErrorCallback;)V
    .registers 2

    return-void
.end method

.method public registerUiCallback(Ljava/lang/String;Lcom/oplus/smartsdk/CardUICallback;)V
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/oplus/smartsdk/CardUICallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public releaseOldViewSource(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public runAnim(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public runAnim(Landroid/view/View;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public runAnim(Landroid/view/View;Ljava/lang/String;J)V
    .registers 5

    return-void
.end method

.method public runAnimDelay(Landroid/view/View;J)V
    .registers 4

    return-void
.end method

.method public seekVideoToTime(Landroid/view/View;Ljava/lang/String;I)V
    .registers 4

    return-void
.end method

.method public sendCardData(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Lcom/oplus/smartsdk/SmartApiInfo;)V
    .registers 5
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4  # Lcom/oplus/smartsdk/SmartApiInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public setAlpha(Landroid/view/View;Ljava/lang/String;F)V
    .registers 4

    return-void
.end method

.method public setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public setCanLog(Z)V
    .registers 2

    return-void
.end method

.method public setEnabled(Landroid/view/View;Ljava/lang/String;Z)V
    .registers 4

    return-void
.end method

.method public setEngineCacheSize(I)V
    .registers 2

    return-void
.end method

.method public setImageSrc(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public setListIsPaginationLoad(Landroid/view/View;Ljava/lang/String;Z)V
    .registers 4

    return-void
.end method

.method public setListNextPageData(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public setText(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public setTextColor(Landroid/view/View;Ljava/lang/String;I)V
    .registers 4

    return-void
.end method

.method public setTextColorString(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public setTextCompoundDrawable(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    return-void
.end method

.method public setTextListItem(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    return-void
.end method

.method public setTextSize(Landroid/view/View;Ljava/lang/String;I)V
    .registers 4

    return-void
.end method

.method public setUseCache(Z)V
    .registers 2

    return-void
.end method

.method public setUseImageThread(Z)V
    .registers 2

    return-void
.end method

.method public setVideoSpeed(Landroid/view/View;Ljava/lang/String;F)V
    .registers 4

    return-void
.end method

.method public setVideoSrc(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public setVideoVolume(Landroid/view/View;Ljava/lang/String;F)V
    .registers 4

    return-void
.end method

.method public setVisibility(Landroid/view/View;Ljava/lang/String;I)V
    .registers 4

    return-void
.end method

.method public setVisibilityStr(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public unRegisterUiCallback(Ljava/lang/String;)V
    .registers 2
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
