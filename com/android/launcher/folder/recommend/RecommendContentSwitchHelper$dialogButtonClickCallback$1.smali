.class public final Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper$dialogButtonClickCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/folder/recommend/DialogButtonClickCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper$dialogButtonClickCallback$1;->this$0:Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeButtonClick()V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper$dialogButtonClickCallback$1;->this$0:Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;

    invoke-static {p0}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->access$getPreferenceHelper$p(Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;)Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;

    move-result-object p0

    const-string v0, "folder_content_recommend_switch"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->putIntPref(Ljava/lang/String;I)V

    return-void
.end method

.method public onPositiveButtonClick()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper$dialogButtonClickCallback$1;->this$0:Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->access$stopAppStoreContentRecommend(Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;Z)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper$dialogButtonClickCallback$1;->this$0:Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;

    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->getSecondDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_12

    :cond_f
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :goto_12
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper$dialogButtonClickCallback$1;->this$0:Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;

    invoke-static {p0}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->access$disbandFolder(Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;)V

    return-void
.end method
