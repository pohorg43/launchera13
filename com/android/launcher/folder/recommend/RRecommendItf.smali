.class public interface abstract Lcom/android/launcher/folder/recommend/RRecommendItf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/ILauncherLifecycleObserver;


# virtual methods
.method public abstract clearRecommendBySettings(Lcom/android/launcher3/model/data/FolderInfo;)V
.end method

.method public abstract enableFolderContentRecommend(Z)V
.end method

.method public abstract getFolderRecommendDescribe(Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/FolderInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getFolderRecommendSwitchBean(IILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean$RecommendSwitchBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getResourceByIndex(I)Ljava/lang/String;
.end method

.method public abstract isRecommendEnable()Z
.end method

.method public abstract toolsEnable()Z
.end method

.method public abstract updateFolderRecommendSwitch(Ljava/lang/String;)V
.end method
