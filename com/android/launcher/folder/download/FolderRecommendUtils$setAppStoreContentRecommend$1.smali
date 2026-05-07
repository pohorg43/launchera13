.class final Lcom/android/launcher/folder/download/FolderRecommendUtils$setAppStoreContentRecommend$1;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.android.launcher.folder.download.FolderRecommendUtils$setAppStoreContentRecommend$1"
    f = "FolderRecommendUtils.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/folder/download/FolderRecommendUtils;->setAppStoreContentRecommend(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld3/i;",
        "Lkotlin/jvm/functions/Function2<",
        "Lq3/f0;",
        "Lb3/d<",
        "-",
        "Ly2/p;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $folderRecommendSupport:I

.field public label:I

.field public final synthetic this$0:Lcom/android/launcher/folder/download/FolderRecommendUtils;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/android/launcher/folder/download/FolderRecommendUtils;Lb3/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Lcom/android/launcher/folder/download/FolderRecommendUtils;",
            "Lb3/d<",
            "-",
            "Lcom/android/launcher/folder/download/FolderRecommendUtils$setAppStoreContentRecommend$1;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/android/launcher/folder/download/FolderRecommendUtils$setAppStoreContentRecommend$1;->$folderRecommendSupport:I

    iput-object p2, p0, Lcom/android/launcher/folder/download/FolderRecommendUtils$setAppStoreContentRecommend$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/launcher/folder/download/FolderRecommendUtils$setAppStoreContentRecommend$1;->this$0:Lcom/android/launcher/folder/download/FolderRecommendUtils;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ld3/i;-><init>(ILb3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lb3/d;)Lb3/d;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lb3/d<",
            "*>;)",
            "Lb3/d<",
            "Ly2/p;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/android/launcher/folder/download/FolderRecommendUtils$setAppStoreContentRecommend$1;

    iget v0, p0, Lcom/android/launcher/folder/download/FolderRecommendUtils$setAppStoreContentRecommend$1;->$folderRecommendSupport:I

    iget-object v1, p0, Lcom/android/launcher/folder/download/FolderRecommendUtils$setAppStoreContentRecommend$1;->$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/launcher/folder/download/FolderRecommendUtils$setAppStoreContentRecommend$1;->this$0:Lcom/android/launcher/folder/download/FolderRecommendUtils;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/launcher/folder/download/FolderRecommendUtils$setAppStoreContentRecommend$1;-><init>(ILandroid/content/Context;Lcom/android/launcher/folder/download/FolderRecommendUtils;Lb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/folder/download/FolderRecommendUtils$setAppStoreContentRecommend$1;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/f0;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/folder/download/FolderRecommendUtils$setAppStoreContentRecommend$1;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/folder/download/FolderRecommendUtils$setAppStoreContentRecommend$1;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/android/launcher/folder/download/FolderRecommendUtils$setAppStoreContentRecommend$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lcom/android/launcher/folder/download/FolderRecommendUtils$setAppStoreContentRecommend$1;->label:I

    if-nez v0, :cond_55

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget p1, p0, Lcom/android/launcher/folder/download/FolderRecommendUtils$setAppStoreContentRecommend$1;->$folderRecommendSupport:I

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-string/jumbo p1, "setAppStoreContentRecommend:"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x5

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FolderRecommendUtils"

    invoke-static {v1, p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/folder/download/FolderRecommendUtils$setAppStoreContentRecommend$1;->$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher/folder/download/FolderRecommendUtils$setAppStoreContentRecommend$1;->$folderRecommendSupport:I

    const-string v1, "folder_content_recommend_switch"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->putIntPref(Ljava/lang/String;I)V

    sget-boolean p1, Lcom/android/common/config/FeatureOption;->isRLMExpDevice:Z

    if-eqz p1, :cond_45

    sget-object p1, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->INSTANCE:Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->isRecommendEnable()Z

    move-result p1

    if-nez p1, :cond_45

    iget-object p1, p0, Lcom/android/launcher/folder/download/FolderRecommendUtils$setAppStoreContentRecommend$1;->this$0:Lcom/android/launcher/folder/download/FolderRecommendUtils;

    iget-object p0, p0, Lcom/android/launcher/folder/download/FolderRecommendUtils$setAppStoreContentRecommend$1;->$context:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->access$createSwitchJsonForAllRecommend(Lcom/android/launcher/folder/download/FolderRecommendUtils;Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->access$setAppStoreContentRecommendEnable(Lcom/android/launcher/folder/download/FolderRecommendUtils;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_52

    :cond_45
    iget-object p1, p0, Lcom/android/launcher/folder/download/FolderRecommendUtils$setAppStoreContentRecommend$1;->this$0:Lcom/android/launcher/folder/download/FolderRecommendUtils;

    iget-object v0, p0, Lcom/android/launcher/folder/download/FolderRecommendUtils$setAppStoreContentRecommend$1;->$context:Landroid/content/Context;

    iget p0, p0, Lcom/android/launcher/folder/download/FolderRecommendUtils$setAppStoreContentRecommend$1;->$folderRecommendSupport:I

    invoke-static {p1, v0, p0}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->access$createSwitchJsonForAllRecommend(Lcom/android/launcher/folder/download/FolderRecommendUtils;Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->access$setAppStoreContentRecommendEnable(Lcom/android/launcher/folder/download/FolderRecommendUtils;Landroid/content/Context;Ljava/lang/String;)V

    :goto_52
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0

    :cond_55
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
