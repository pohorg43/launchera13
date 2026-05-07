.class public interface abstract Lcom/oplus/seedling/sdk/seedling/ISeedling;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getBusinessPkgName()Ljava/lang/String;
.end method

.method public abstract getCardEngineType()Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;
.end method

.method public abstract getCardType()I
.end method

.method public abstract getCurrentPageId()Ljava/lang/String;
.end method

.method public abstract getIntentList(Lcom/oplus/seedling/sdk/callback/StartActivityCallback;)V
.end method

.method public abstract getServiceId()Ljava/lang/String;
.end method

.method public abstract getShortcutsConfigInfo()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/seedling/sdk/entity/ShortcutsConfig;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract getUIData()Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;
.end method

.method public abstract getUpkVersion()Ljava/lang/String;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract getViewBySize(I)Landroid/view/View;
.end method

.method public abstract getViewListBySize(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getViewScreenshot()Landroid/graphics/Bitmap;
.end method

.method public abstract notifyCanStartAnimation(Landroid/view/View;Z)V
.end method

.method public abstract notifyLiteReload()V
.end method

.method public abstract notifySizeChange(II)V
.end method

.method public abstract onHide()V
.end method

.method public abstract onShow()V
.end method

.method public abstract onTrimMemory(I)V
.end method

.method public abstract performCardClickAction(Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract performClick(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setAODStatus(Z)V
.end method

.method public abstract setMaxHeight(I)V
.end method

.method public abstract setMaxHeight(Landroid/view/View;I)V
.end method

.method public abstract setMaxWidth(I)V
.end method

.method public abstract setMaxWidth(Landroid/view/View;I)V
.end method

.method public abstract setScreenLocked(Z)V
.end method

.method public abstract setSecondaryScreenCapsuleDarkMode(ZZI)V
.end method

.method public abstract setWidgetColor(I)V
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
.end method

.method public abstract setWidgetColor(IZ)V
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
.end method

.method public abstract updateData(Ljava/lang/String;)V
.end method

.method public abstract updateData([B)V
.end method
