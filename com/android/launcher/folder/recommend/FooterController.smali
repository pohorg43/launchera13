.class public Lcom/android/launcher/folder/recommend/FooterController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/launcher/folder/recommend/SwitchManageHelper$SwitchChangeCallback;
.implements Lcom/android/launcher/folder/recommend/DestroyCallback;
.implements Lcom/android/launcher/folder/recommend/DialogDismissCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/folder/recommend/FooterController$H;
    }
.end annotation


# static fields
.field private static final CHECK_DOWNLOAD_PROGRESS_DELAY:J = 0x1f4L

.field private static final COLOR_NO_CONNECTION_TEXT:I = -0x73000001

.field public static final JUMP_RECOMMEND_DETAIL_CODE:I = 0x13461c1

.field public static final MSG_BIND_COMPLETE:I = 0x6ba

.field public static final MSG_BIND_FAILED:I = 0x6c1

.field public static final MSG_DATA_LOADED:I = 0x6bc

.field public static final MSG_ICON_LOADED:I = 0x6bb

.field public static final MSG_ITEM_POSITION_CHANGED:I = 0x6bd

.field public static final MSG_LOAD_FAILED:I = 0x6bf

.field public static final MSG_NO_CONNECTION:I = 0x6c0

.field public static final MSG_SERVICE_DIED:I = 0x6be

.field public static final MSG_SERVICE_DISCONNECTED:I = 0x6c2

.field private static final RECOMMEND_FOLDER_SHORT_CLICK:I = 0x15e

.field private static final TAG:Ljava/lang/String; = "FooterController"

.field public static final UPLIFT_FACTOR:F = 0.65f

.field private static sLoadWaitTime:J = 0x1388L


# instance fields
.field private mAdapter:Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;

.field private mAnimation:Landroid/animation/Animator;

.field private mContainer:Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;

.field private mContext:Lcom/android/launcher3/Launcher;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/folder/recommend/bean/DataBean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataLock:Ljava/lang/Object;

.field private mFolder:Lcom/android/launcher3/folder/OplusFolder;

.field private mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

.field private mIconLoadedCount:I

.field private mIsSpecifiedFolder:Z

.field private mLoadFailCheck:Ljava/lang/Runnable;

.field private mLoadMsgTip:Landroid/widget/TextView;

.field private mMainHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

.field private mMarketManager:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

.field private mMeasuredHeight:I

.field private mNeedHandleLoadFailed:Z

.field private mNeedHandleNoConnection:Z

.field private mOnLoadedAnimatorReadyPlay:Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter$OnLoadedAnimatorReadyPlay;

.field private mOnSnapToDestPageListener:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView$OnSnapToDestPageListener;

.field private mPlaceHolder:Landroid/view/View;

.field private mRecommendFooter:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

.field private mRecommendedNext:Landroid/widget/ImageView;

.field private mRecommendedTitle:Landroid/widget/TextView;

.field private mRecyclerView:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

.field private mResources:Landroid/content/res/Resources;

.field private mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mSwitchManageHelper:Lcom/android/launcher/folder/recommend/SwitchManageHelper;

.field private mWorkHandler:Lcom/android/launcher/folder/recommend/FooterController$H;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/folder/OplusFolder;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mDataLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/launcher/folder/recommend/FooterController$1;

    invoke-direct {v0, p0}, Lcom/android/launcher/folder/recommend/FooterController$1;-><init>(Lcom/android/launcher/folder/recommend/FooterController;)V

    iput-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mOnSnapToDestPageListener:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView$OnSnapToDestPageListener;

    new-instance v0, Lcom/android/launcher/folder/recommend/FooterController$2;

    invoke-direct {v0, p0}, Lcom/android/launcher/folder/recommend/FooterController$2;-><init>(Lcom/android/launcher/folder/recommend/FooterController;)V

    iput-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mOnLoadedAnimatorReadyPlay:Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter$OnLoadedAnimatorReadyPlay;

    new-instance v0, Lcom/android/launcher/folder/recommend/FooterController$3;

    invoke-direct {v0, p0}, Lcom/android/launcher/folder/recommend/FooterController$3;-><init>(Lcom/android/launcher/folder/recommend/FooterController;)V

    iput-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    new-instance v0, Lcom/android/launcher/folder/recommend/FooterController$4;

    invoke-direct {v0, p0}, Lcom/android/launcher/folder/recommend/FooterController$4;-><init>(Lcom/android/launcher/folder/recommend/FooterController;)V

    iput-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mLoadFailCheck:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mContext:Lcom/android/launcher3/Launcher;

    const v0, 0x7f0a0411

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    iput-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendFooter:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    const-string v1, "FooterController"

    if-nez v0, :cond_3d

    const-string p0, "have added this layout: oplus_folder_recommended_layout?"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3d
    iput-object p2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mFolder:Lcom/android/launcher3/folder/OplusFolder;

    iget-object p2, p2, Lcom/android/launcher3/folder/OplusFolder;->mFolderRecommendSetting:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Lcom/android/launcher/folder/recommend/view/RecommendContainer;->setSettingsIv(Landroid/widget/ImageView;)V

    iput-boolean p3, p0, Lcom/android/launcher/folder/recommend/FooterController;->mIsSpecifiedFolder:Z

    const/16 p2, 0x8

    if-eqz p3, :cond_14b

    iget-object p3, p0, Lcom/android/launcher/folder/recommend/FooterController;->mContext:Lcom/android/launcher3/Launcher;

    invoke-static {p3}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    move-result-object p3

    iput-object p3, p0, Lcom/android/launcher/folder/recommend/FooterController;->mSwitchManageHelper:Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    invoke-virtual {p3}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->isShouldRecommend()Z

    move-result p3

    if-eqz p3, :cond_5f

    iget-object p2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendFooter:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_64

    :cond_5f
    iget-object p3, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendFooter:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_64
    iget-object p2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mContext:Lcom/android/launcher3/Launcher;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mResources:Landroid/content/res/Resources;

    iget-object p2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendFooter:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    const p3, 0x7f0a0415

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

    iput-object p2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecyclerView:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

    iget-object p3, p0, Lcom/android/launcher/folder/recommend/FooterController;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object p2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendFooter:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    const p3, 0x7f0a0414

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendedNext:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mFolder:Lcom/android/launcher3/folder/OplusFolder;

    new-instance p3, Landroidx/constraintlayout/motion/widget/a;

    invoke-direct {p3, p0, p1}, Landroidx/constraintlayout/motion/widget/a;-><init>(Lcom/android/launcher/folder/recommend/FooterController;Lcom/android/launcher3/Launcher;)V

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    iget-object p2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendFooter:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    const p3, 0x7f0a0413

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mLoadMsgTip:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendFooter:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    const p3, 0x7f0a0412

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mPlaceHolder:Landroid/view/View;

    iget-object p2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendFooter:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    const p3, 0x7f0a0249

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendedTitle:Landroid/widget/TextView;

    new-instance p3, Lcom/android/launcher/folder/recommend/c;

    const/4 v0, 0x4

    invoke-direct {p3, p0, v0}, Lcom/android/launcher/folder/recommend/c;-><init>(Lcom/android/launcher/folder/recommend/FooterController;I)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    iget-object p2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendedNext:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mSwitchManageHelper:Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    invoke-virtual {p2, p0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->addSwitchChangeCallback(Lcom/android/launcher/folder/recommend/SwitchManageHelper$SwitchChangeCallback;)V

    iget-object p2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendFooter:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0x14

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;

    iget-object p3, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    invoke-direct {p2, p1, p3}, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mAdapter:Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;

    new-instance p1, Landroidx/core/view/a;

    invoke-direct {p1, p0}, Landroidx/core/view/a;-><init>(Lcom/android/launcher/folder/recommend/FooterController;)V

    invoke-virtual {p2, p1}, Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter;->setItemClickListener(Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$OnItemClickListener;)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mAdapter:Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;

    iget-object p2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mOnLoadedAnimatorReadyPlay:Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter$OnLoadedAnimatorReadyPlay;

    invoke-virtual {p1, p2}, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->setOnLoadedAnimatorReadyPlay(Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter$OnLoadedAnimatorReadyPlay;)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecyclerView:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

    iget-object p2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mAdapter:Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p1, Lcom/android/launcher/folder/recommend/FooterController$H;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/launcher/folder/recommend/FooterController$H;-><init>(Lcom/android/launcher/folder/recommend/FooterController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMainHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendFooter:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mContext:Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMarketManager:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    new-instance p2, Lcom/android/launcher/folder/recommend/b;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/android/launcher/folder/recommend/b;-><init>(Lcom/android/launcher/folder/recommend/FooterController;I)V

    invoke-virtual {p1, p2}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->addCallback(Lcom/android/launcher/folder/recommend/DestroyCallback;)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMarketManager:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->getHandlerThread()Landroid/os/HandlerThread;

    move-result-object p1

    if-nez p1, :cond_124

    return-void

    :cond_124
    new-instance p1, Lcom/android/launcher/folder/recommend/FooterController$H;

    iget-object p2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMarketManager:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    invoke-virtual {p2}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->getHandlerThread()Landroid/os/HandlerThread;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/launcher/folder/recommend/FooterController$H;-><init>(Lcom/android/launcher/folder/recommend/FooterController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mWorkHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    iget-object p2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMarketManager:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    invoke-virtual {p2, p1}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->setHandler(Lcom/android/launcher/folder/recommend/FooterController$H;)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendFooter:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    const p2, 0x7f0a0380

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mContainer:Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;

    invoke-virtual {p1, p3}, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;->setSupportOverScroll(Z)V

    return-void

    :cond_14b
    const-string p1, "FooterController: recommendFolder is false"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendFooter:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/folder/recommend/FooterController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FooterController;->lambda$showRecommendContent$3()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/folder/recommend/FooterController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/folder/recommend/FooterController;->exposureAppsRecord(I)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/launcher/folder/recommend/FooterController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FooterController;->exposureAppsRecord()V

    return-void
.end method

.method public static synthetic access$1008(Lcom/android/launcher/folder/recommend/FooterController;)I
    .registers 3

    iget v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mIconLoadedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mIconLoadedCount:I

    return v0
.end method

.method public static synthetic access$1100(Lcom/android/launcher/folder/recommend/FooterController;)Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecyclerView:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/launcher/folder/recommend/FooterController;)Lcom/android/launcher3/folder/OplusFolder;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mFolder:Lcom/android/launcher3/folder/OplusFolder;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/launcher/folder/recommend/FooterController;)Lcom/android/launcher/folder/recommend/SwitchManageHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mSwitchManageHelper:Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/launcher/folder/recommend/FooterController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FooterController;->addTimeoutCheck()V

    return-void
.end method

.method public static synthetic access$1500(Lcom/android/launcher/folder/recommend/FooterController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FooterController;->handleLoadFailed()V

    return-void
.end method

.method public static synthetic access$1600(Lcom/android/launcher/folder/recommend/FooterController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FooterController;->handleNoConnection()V

    return-void
.end method

.method public static synthetic access$1700(Lcom/android/launcher/folder/recommend/FooterController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FooterController;->checkDownloadProgress()V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/launcher/folder/recommend/FooterController;)Landroid/animation/Animator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mAnimation:Landroid/animation/Animator;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/launcher/folder/recommend/FooterController;)Lcom/android/launcher/folder/recommend/FooterController$H;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMainHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/launcher/folder/recommend/FooterController;)Lcom/android/launcher/folder/recommend/market/RequestMarketManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMarketManager:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/launcher/folder/recommend/FooterController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FooterController;->requestLoadRecommendData()V

    return-void
.end method

.method public static synthetic access$600(Lcom/android/launcher/folder/recommend/FooterController;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mDataLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/launcher/folder/recommend/FooterController;)Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mAdapter:Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/launcher/folder/recommend/FooterController;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/launcher/folder/recommend/FooterController;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendedNext:Landroid/widget/ImageView;

    return-object p0
.end method

.method private addTimeoutCheck()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mSwitchManageHelper:Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->isSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mWorkHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mLoadFailCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_42

    sget-wide v0, Lcom/android/launcher/folder/recommend/FooterController;->sLoadWaitTime:J

    iget-object v2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mContext:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0057

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/launcher/folder/recommend/FooterController;->sLoadWaitTime:J

    const-string v0, "addTimeoutCheck sLoadWaitTime "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lcom/android/launcher/folder/recommend/FooterController;->sLoadWaitTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FooterController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mWorkHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mLoadFailCheck:Ljava/lang/Runnable;

    sget-wide v1, Lcom/android/launcher/folder/recommend/FooterController;->sLoadWaitTime:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_42
    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/folder/recommend/FooterController;Landroid/view/View;ILcom/android/launcher/folder/recommend/bean/DataBean;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/folder/recommend/FooterController;->onItemClick(Landroid/view/View;ILcom/android/launcher/folder/recommend/bean/DataBean;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/folder/recommend/FooterController;Lcom/android/launcher/folder/recommend/bean/IconUrlBean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/folder/recommend/FooterController;->lambda$handleAppIconUri$8(Lcom/android/launcher/folder/recommend/bean/IconUrlBean;)V

    return-void
.end method

.method private checkDownloadProgress()V
    .registers 6

    invoke-static {}, Lcom/android/launcher/folder/recommend/RecommendUtils;->getDownloadedApps()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_62

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_62

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/launcher/folder/recommend/FooterController;->getDataBeanForPkgName(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_10

    check-cast v3, Lcom/android/launcher/folder/recommend/bean/DataBean;

    invoke-virtual {v3}, Lcom/android/launcher/folder/recommend/bean/DataBean;->isDownloaded()Z

    move-result v3

    if-nez v3, :cond_10

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher/folder/recommend/bean/DataBean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/launcher/folder/recommend/bean/DataBean;->setDownloaded(Z)V

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloaded app : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", position = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FooterController"

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mAdapter:Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_10

    :cond_62
    return-void
.end method

.method private checkSwitchCallback()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mSwitchManageHelper:Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    if-eqz v0, :cond_16

    invoke-virtual {v0, p0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->hasSwitchChangeCallback(Lcom/android/launcher/folder/recommend/SwitchManageHelper$SwitchChangeCallback;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "FooterController"

    const-string v1, "checkSwitchCallback, need add callback"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mSwitchManageHelper:Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    invoke-virtual {v0, p0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->addSwitchChangeCallback(Lcom/android/launcher/folder/recommend/SwitchManageHelper$SwitchChangeCallback;)V

    :cond_16
    return-void
.end method

.method private checkSwitchEnable()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mSwitchManageHelper:Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->isAppStorePreEnable()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendFooter:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_f
    return-void
.end method

.method public static synthetic d(Lcom/android/launcher/folder/recommend/FooterController;Lcom/android/launcher/folder/recommend/bean/DataBean;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/folder/recommend/FooterController;->lambda$setData$6(Lcom/android/launcher/folder/recommend/bean/DataBean;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/android/launcher/folder/recommend/FooterController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FooterController;->lambda$showRecommendContent$2()V

    return-void
.end method

.method private exposureAppsRecord()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_57

    :cond_b
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecyclerView:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

    iget-object v0, v0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;->mLayoutManager:Lcom/android/launcher/views/VHLinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecyclerView:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

    iget-object v1, v1, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;->mLayoutManager:Lcom/android/launcher/views/VHLinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    if-nez v0, :cond_1f

    add-int/lit8 v1, v1, 0x1

    :cond_1f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_24
    if-gt v0, v1, :cond_4c

    iget-object v3, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_2f

    goto :goto_4c

    :cond_2f
    new-instance v3, Lcom/android/launcher/folder/recommend/bean/AppStatBean;

    invoke-direct {v3}, Lcom/android/launcher/folder/recommend/bean/AppStatBean;-><init>()V

    invoke-virtual {v3, v0}, Lcom/android/launcher/folder/recommend/bean/AppStatBean;->setPos(I)V

    iget-object v4, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher/folder/recommend/bean/DataBean;

    invoke-virtual {v4}, Lcom/android/launcher/folder/recommend/bean/DataBean;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher/folder/recommend/bean/AppStatBean;->setPkg(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_4c
    :goto_4c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_57

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMarketManager:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    invoke-virtual {p0, v2}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->notifyUploadAppsExposure(Ljava/util/List;)V

    :cond_57
    :goto_57
    return-void
.end method

.method private exposureAppsRecord(I)V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    mul-int/lit8 v0, p1, 0x5

    add-int/lit8 v1, v0, 0x4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    const-string v3, "FooterController"

    if-eqz v2, :cond_22

    const-string v2, "exposureAppsRecord: pageNum = "

    const-string v4, ", firstVisibleItemPosition = "

    const-string v5, ", lastCompletelyVisibleItemPosition = "

    invoke-static {v2, p1, v4, v0, v5}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p1, v1, v3}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_22
    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt v1, p1, :cond_3d

    const-string p1, "exposureAppsRecord: lastCompletelyVisibleItemPosition over mData.size="

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    invoke-static {v1, p1, v3}, Lcom/android/launcher/f;->a(Ljava/util/ArrayList;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 v1, p1, -0x1

    :cond_3d
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_42
    if-gt v0, v1, :cond_61

    new-instance v2, Lcom/android/launcher/folder/recommend/bean/AppStatBean;

    invoke-direct {v2}, Lcom/android/launcher/folder/recommend/bean/AppStatBean;-><init>()V

    invoke-virtual {v2, v0}, Lcom/android/launcher/folder/recommend/bean/AppStatBean;->setPos(I)V

    iget-object v3, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/folder/recommend/bean/DataBean;

    invoke-virtual {v3}, Lcom/android/launcher/folder/recommend/bean/DataBean;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher/folder/recommend/bean/AppStatBean;->setPkg(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :cond_61
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6c

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMarketManager:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    invoke-virtual {p0, p1}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->notifyUploadAppsExposure(Ljava/util/List;)V

    :cond_6c
    return-void
.end method

.method public static synthetic f(Lcom/android/launcher/folder/recommend/FooterController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FooterController;->lambda$new$1()V

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher/folder/recommend/FooterController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/folder/recommend/FooterController;->lambda$switchChanged$7(Z)V

    return-void
.end method

.method private getDataBeanForPkgName(Ljava/lang/String;)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher/folder/recommend/bean/DataBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_42

    iget-object v2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3f

    iget-object v2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/folder/recommend/bean/DataBean;

    invoke-virtual {v2}, Lcom/android/launcher/folder/recommend/bean/DataBean;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3f

    new-instance p1, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/folder/recommend/bean/DataBean;

    invoke-direct {p1, v2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return-object p1

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_42
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_45
    move-exception p0

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_4 .. :try_end_47} :catchall_45

    throw p0
.end method

.method private getPageItemCount(I)I
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x14

    if-le v0, v2, :cond_16

    goto :goto_3d

    :cond_16
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x5

    rem-int/2addr v0, v2

    if-nez v0, :cond_21

    return v2

    :cond_21
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/2addr v0, v2

    if-ne v0, p1, :cond_32

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    rem-int/2addr p0, v2

    return p0

    :cond_32
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    div-int/2addr p0, v2

    if-le p0, p1, :cond_3c

    return v2

    :cond_3c
    return v1

    :cond_3d
    :goto_3d
    const-string p0, "FooterController"

    const-string p1, "getPageItemCount, data size is invalid."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static synthetic h(Lcom/android/launcher/folder/recommend/FooterController;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/folder/recommend/FooterController;->lambda$handleLoadFailed$9(Landroid/view/View;)V

    return-void
.end method

.method private handleAppIconUri(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/launcher/folder/recommend/FooterController;->getDataBeanForPkgName(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_f8

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v1, :cond_c

    goto/16 :goto_f8

    :cond_c
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_11
    iget-object v3, p0, Lcom/android/launcher/folder/recommend/FooterController;->mContext:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "r"

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-nez v2, :cond_3f

    const-string p0, "FooterController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAppIconUri: imageFd is null. pkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_36} :catch_c7
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_36} :catch_c7
    .catchall {:try_start_11 .. :try_end_36} :catchall_c5

    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    :try_start_3b
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3e

    :catch_3e
    :cond_3e
    return-void

    :cond_3f
    :try_start_3f
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher/folder/recommend/FooterController;->mResources:Landroid/content/res/Resources;

    invoke-static {v1, v3}, Lcom/android/launcher/folder/recommend/RecommendUtils;->decodeFixedBitmap(Ljava/io/FileDescriptor;Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_6b

    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/launcher/folder/recommend/FooterController;->mResources:Landroid/content/res/Resources;

    invoke-direct {p2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mContext:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/common/util/ThemeUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;->setEnableDarkMode(Z)V

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    iget-object v3, p0, Lcom/android/launcher/folder/recommend/FooterController;->mContext:Lcom/android/launcher3/Launcher;

    invoke-static {v1, p2, v3}, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;->handleFileIcon(Lcom/oplus/uxicon/helper/IconConfig;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    move-result-object p2

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher/folder/recommend/bean/DataBean;

    invoke-virtual {v1, p2}, Lcom/android/launcher/folder/recommend/bean/DataBean;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_91

    :cond_6b
    const-string v1, "FooterController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAppGuideData: decode bitmap failed. pkgName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", app="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lcom/android/launcher/folder/recommend/bean/DataBean;

    invoke-virtual {p2}, Lcom/android/launcher/folder/recommend/bean/DataBean;->getAppName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_91
    iget-object p2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mDataLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_94
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3f .. :try_end_94} :catch_c7
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_94} :catch_c7
    .catchall {:try_start_3f .. :try_end_94} :catchall_c5

    :try_start_94
    const-string v1, "FooterController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAppGuideData position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " icon loaded, send MSG_ICON_LOADED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMainHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    const/16 v3, 0x6bb

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMainHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit p2

    goto :goto_e8

    :catchall_c2
    move-exception p0

    monitor-exit p2
    :try_end_c4
    .catchall {:try_start_94 .. :try_end_c4} :catchall_c2

    :try_start_c4
    throw p0
    :try_end_c5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c4 .. :try_end_c5} :catch_c7
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_c5} :catch_c7
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c5

    :catchall_c5
    move-exception p0

    goto :goto_ef

    :catch_c7
    move-exception p0

    :try_start_c8
    const-string p2, "FooterController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error occur while handleAppIconUri, uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", exception = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e6
    .catchall {:try_start_c8 .. :try_end_e6} :catchall_c5

    if-eqz v2, :cond_ee

    :goto_e8
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    :try_start_eb
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_ee} :catch_ee

    :catch_ee
    :cond_ee
    return-void

    :goto_ef
    if-eqz v2, :cond_f7

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    :try_start_f4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_f7} :catch_f7

    :catch_f7
    :cond_f7
    throw p0

    :cond_f8
    :goto_f8
    const-string p1, "FooterController"

    const-string v0, "handleAppIconUri: can\'t find a dataBean for "

    const-string v1, ", size = "

    invoke-static {v0, p2, v1}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    invoke-static {p0, p2, p1}, Lcom/android/launcher/f;->a(Ljava/util/ArrayList;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method private handleLoadFailed()V
    .registers 4

    const-string v0, "FooterController"

    const-string v1, "handleLoadFailed"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMarketManager:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->cancelLoadRecommendData()V

    :cond_e
    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_22

    const-string v1, "handleLoadFailed, but recommend Data has been loaded, mData size is:"

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    invoke-static {p0, v1, v0}, Lcom/android/launcher/f;->a(Ljava/util/ArrayList;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void

    :cond_22
    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMarketManager:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    if-eqz v1, :cond_46

    invoke-virtual {v1}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->getCallbackRegistered()Z

    move-result v1

    if-nez v1, :cond_46

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMarketManager:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    invoke-virtual {v1}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->isServiceDied()Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendFooter:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :cond_3c
    const-string v1, "callback is not registered but service is still alive, register again."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMarketManager:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    invoke-virtual {v1}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->registerCallback()V

    :cond_46
    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mFolder:Lcom/android/launcher3/folder/OplusFolder;

    iget-object v1, v1, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {v1}, Lcom/android/launcher3/folder/IFolderExt;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v1}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_5c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mNeedHandleLoadFailed:Z

    return-void

    :cond_5c
    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher/folder/recommend/FooterController;->enableFooterRecommend(Lcom/android/launcher3/Launcher;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string p0, "handleLoadFailed, but not enable recommend."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6e
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendFooter:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendedNext:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mAdapter:Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iput v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mIconLoadedCount:I

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mLoadMsgTip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_90

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mAnimation:Landroid/animation/Animator;

    :cond_90
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecyclerView:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mLoadMsgTip:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/launcher/folder/recommend/RecommendUtils;->animateLoadFailed(Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mAnimation:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mLoadMsgTip:Landroid/widget/TextView;

    const v1, 0x7f120435

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mLoadMsgTip:Landroid/widget/TextView;

    new-instance v1, Lcom/android/launcher/v;

    invoke-direct {v1, p0}, Lcom/android/launcher/v;-><init>(Lcom/android/launcher/folder/recommend/FooterController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private handleNoConnection()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_5e

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mFolder:Lcom/android/launcher3/folder/OplusFolder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {v0}, Lcom/android/launcher3/folder/IFolderExt;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mNeedHandleNoConnection:Z

    return-void

    :cond_1f
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendFooter:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mAdapter:Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mAnimation:Landroid/animation/Animator;

    const/4 v2, 0x0

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iput-object v2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mAnimation:Landroid/animation/Animator;

    :cond_34
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecyclerView:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

    iget-object v3, p0, Lcom/android/launcher/folder/recommend/FooterController;->mLoadMsgTip:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/android/launcher/folder/recommend/RecommendUtils;->animateLoadFailed(Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mAnimation:Landroid/animation/Animator;

    iput v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mIconLoadedCount:I

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendedNext:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mLoadMsgTip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecyclerView:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mLoadMsgTip:Landroid/widget/TextView;

    const v1, 0x7f120436

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mLoadMsgTip:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :catchall_5e
    move-exception p0

    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw p0
.end method

.method private hideAndResetRecommendFooter()V
    .registers 5

    const-string v0, "hideAndResetRecommendFooter "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMarketManager:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    const/4 v2, 0x0

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    const-string v3, "FooterController"

    invoke-static {v0, v1, v3}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendFooter:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMarketManager:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    if-nez v0, :cond_1e

    return-void

    :cond_1e
    iget v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mIconLoadedCount:I

    const/4 v3, 0x5

    if-le v0, v3, :cond_26

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FooterController;->exposureAppsRecord()V

    :cond_26
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMarketManager:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->notifyLauncherFolderHide()V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecyclerView:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mLoadMsgTip:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mFolder:Lcom/android/launcher3/folder/OplusFolder;

    iget-object v0, v0, Lcom/android/launcher3/folder/OplusFolder;->mFolderRecommendSetting:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendedNext:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iput v2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mIconLoadedCount:I

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mLoadMsgTip:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5a

    :cond_55
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mLoadMsgTip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5a
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mWorkHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    new-instance v1, Lcom/android/launcher/folder/recommend/c;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/folder/recommend/c;-><init>(Lcom/android/launcher/folder/recommend/FooterController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMainHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mAnimation:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_78

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_78
    return-void
.end method

.method public static synthetic i(Lcom/android/launcher/folder/recommend/FooterController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FooterController;->showRecommendContent()V

    return-void
.end method

.method private isLauncherCommonState(Lcom/android/launcher3/Launcher;)Z
    .registers 6

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    sget-object v1, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_12

    sget-object v1, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    if-eq v0, v1, :cond_12

    return v2

    :cond_12
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3d

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->ICON_FALLEN_DOWN:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_3d

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_3d

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_3d

    sget-object v0, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_3d

    move v0, v1

    goto :goto_3e

    :cond_3d
    move v0, v2

    :goto_3e
    sget-object v3, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-nez v3, :cond_50

    sget-object v3, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-nez v3, :cond_50

    move v3, v1

    goto :goto_51

    :cond_50
    move v3, v2

    :goto_51
    if-eqz v0, :cond_56

    if-eqz v3, :cond_56

    return v2

    :cond_56
    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez v0, :cond_8d

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz p1, :cond_67

    goto :goto_8d

    :cond_67
    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mContext:Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {p1, v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isProtectAppsFolder(Lcom/android/launcher3/folder/Folder;)Z

    move-result p1

    if-eqz p1, :cond_8c

    const-string p1, "current is Protect App Folder, title = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mFolder:Lcom/android/launcher3/folder/OplusFolder;

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FooterController"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_8c
    return v1

    :cond_8d
    :goto_8d
    return v2
.end method

.method public static synthetic j(Lcom/android/launcher/folder/recommend/FooterController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FooterController;->lambda$requestLoadRecommendData$5()V

    return-void
.end method

.method public static synthetic k(Lcom/android/launcher/folder/recommend/FooterController;Lcom/android/launcher3/Launcher;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/folder/recommend/FooterController;->lambda$new$0(Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method public static synthetic l(Lcom/android/launcher/folder/recommend/FooterController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FooterController;->lambda$hideAndResetRecommendFooter$4()V

    return-void
.end method

.method private synthetic lambda$handleAppIconUri$8(Lcom/android/launcher/folder/recommend/bean/IconUrlBean;)V
    .registers 3

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/bean/IconUrlBean;->getIconUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/bean/IconUrlBean;->getPkg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/launcher/folder/recommend/FooterController;->handleAppIconUri(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$handleLoadFailed$9(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMarketManager:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->startMarketService()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FooterController;->requestLoadRecommendData()V

    goto :goto_11

    :cond_e
    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FooterController;->addTimeoutCheck()V

    :goto_11
    return-void
.end method

.method private synthetic lambda$hideAndResetRecommendFooter$4()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mWorkHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/android/launcher3/Launcher;)V
    .registers 5

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    if-eqz p1, :cond_51

    if-eqz v0, :cond_51

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecyclerView:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

    new-instance v2, Lcom/android/launcher/folder/recommend/view/RecommendPaddingDecoration;

    invoke-direct {v2, v1}, Lcom/android/launcher/folder/recommend/view/RecommendPaddingDecoration;-><init>(I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendedNext:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mContext:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_4a

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_4c

    :cond_4a
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_4c
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendedNext:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_51
    return-void
.end method

.method private synthetic lambda$new$1()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendedTitle:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method private synthetic lambda$requestLoadRecommendData$5()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecyclerView:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mLoadMsgTip:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecyclerView:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$setData$6(Lcom/android/launcher/folder/recommend/bean/DataBean;)Z
    .registers 8

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mContext:Lcom/android/launcher3/Launcher;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    invoke-virtual {p0}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMarketRecommendInfoList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMLatestMarketRecommendInfoList()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_37

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/bean/DataBean;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {v5}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    return v4

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_37
    move v0, v1

    :goto_38
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_56

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/bean/DataBean;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {v3}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    return v4

    :cond_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_56
    return v1
.end method

.method private synthetic lambda$showRecommendContent$2()V
    .registers 3

    iget v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mIconLoadedCount:I

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecyclerView:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;->setScrollEnable(Z)V

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FooterController;->exposureAppsRecord()V

    :cond_d
    return-void
.end method

.method private synthetic lambda$showRecommendContent$3()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mFolder:Lcom/android/launcher3/folder/OplusFolder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mContext:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mFolder:Lcom/android/launcher3/folder/OplusFolder;

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget p0, p0, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    invoke-virtual {v0, p0}, Lcom/android/statistics/LauncherStatistics;->statsRecommendFolderOpenDynamic(I)V

    :cond_15
    return-void
.end method

.method private synthetic lambda$switchChanged$7(Z)V
    .registers 4

    if-nez p1, :cond_18

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendFooter:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mLoadMsgTip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mSwitchManageHelper:Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->isAppStorePreEnable()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FooterController;->resetPageIndicatorMargin()V

    :cond_18
    if-eqz p1, :cond_69

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {p1}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_69

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMarketManager:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    const/4 v0, 0x0

    if-nez p1, :cond_37

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mContext:Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMarketManager:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    new-instance v1, Lcom/android/launcher/folder/recommend/b;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher/folder/recommend/b;-><init>(Lcom/android/launcher/folder/recommend/FooterController;I)V

    invoke-virtual {p1, v1}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->addCallback(Lcom/android/launcher/folder/recommend/DestroyCallback;)V

    :cond_37
    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolder;->centerAboutIconForRecommend()V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMarketManager:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mWorkHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    invoke-virtual {p1, v1}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->setHandler(Lcom/android/launcher/folder/recommend/FooterController$H;)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMarketManager:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->getCallMarket()Lcom/android/launcher/folder/recommend/market/CallMarket;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/launcher/folder/recommend/market/CallMarket;->setFootController(Lcom/android/launcher/folder/recommend/FooterController;)V

    iget p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mIconLoadedCount:I

    if-nez p1, :cond_63

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FooterController;->showRecommendContent()V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMarketManager:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->startMarketService()Z

    move-result p1

    if-nez p1, :cond_5f

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FooterController;->requestLoadRecommendData()V

    goto :goto_80

    :cond_5f
    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FooterController;->addTimeoutCheck()V

    goto :goto_80

    :cond_63
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendFooter:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :cond_69
    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mSwitchManageHelper:Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->isAppStorePreEnable()Z

    move-result p1

    if-nez p1, :cond_80

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result p1

    if-nez p1, :cond_80

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mFolder:Lcom/android/launcher3/folder/OplusFolder;

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderRecommendSetting:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_80
    :goto_80
    return-void
.end method

.method private moveToNextPage()V
    .registers 2

    sget-object v0, Lcom/android/common/util/ClickUtils;->INSTANCE:Lcom/android/common/util/ClickUtils;

    invoke-virtual {v0}, Lcom/android/common/util/ClickUtils;->shortClickable()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mIconLoadedCount:I

    if-gtz v0, :cond_16

    const-string p0, "FooterController"

    const-string/jumbo v0, "moveToNextPage, but current page items have not loaded completely."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecyclerView:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;->snapToNextPage()V

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FooterController;->exposureAppsRecord()V

    return-void
.end method

.method private onItemClick(Landroid/view/View;ILcom/android/launcher/folder/recommend/bean/DataBean;)V
    .registers 6

    const-wide/16 v0, 0x15e

    invoke-static {v0, v1}, Lcom/android/common/util/ClickUtils;->clickable(J)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_29

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_21

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_29

    :cond_21
    const-string p0, "Data has not loaded. click index = "

    const-string p1, "FooterController"

    invoke-static {p0, p2, p1}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_29
    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mAdapter:Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->setPageAnimateForbidden(Z)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/folder/recommend/bean/DataBean;

    iget-object p3, p0, Lcom/android/launcher/folder/recommend/FooterController;->mContext:Lcom/android/launcher3/Launcher;

    invoke-static {p1, p3}, Lcom/android/launcher/folder/recommend/RecommendUtils;->jumpToDetail(Lcom/android/launcher/folder/recommend/bean/DataBean;Lcom/android/launcher3/Launcher;)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMarketManager:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    new-instance p3, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/folder/recommend/bean/DataBean;

    invoke-direct {p3, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->doRecommendAppsStat(Landroid/util/Pair;)V

    return-void
.end method

.method private recycle()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_19

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mAdapter:Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->setPageAnimateForbidden(Z)V

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mAdapter:Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_1c

    :catchall_19
    move-exception p0

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p0

    :cond_1c
    :goto_1c
    return-void
.end method

.method private requestLoadRecommendData()V
    .registers 4

    const-string v0, "FooterController"

    const-string/jumbo v1, "requestLoadRecommendData"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMarketManager:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->removeUnbindCallback()V

    :cond_f
    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher/folder/recommend/FooterController;->enableFooterRecommend(Lcom/android/launcher3/Launcher;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string/jumbo p0, "requestLoadRecommendData, but is not enable recommend"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_22
    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FooterController;->addTimeoutCheck()V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMarketManager:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->loadRecommendDataList()V

    :cond_2c
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMainHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    new-instance v1, Lcom/android/launcher/folder/recommend/c;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/folder/recommend/c;-><init>(Lcom/android/launcher/folder/recommend/FooterController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private resetPageIndicatorMargin()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolder;->getIndicator()Lcom/android/launcher/pageindicators/OplusPageIndicator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v1}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_77

    if-eqz v0, :cond_77

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_77

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/FooterController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v3

    const v4, 0x7f070616

    if-eqz v3, :cond_48

    iget-boolean v3, v2, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez v3, :cond_48

    iget-object v2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mContext:Lcom/android/launcher3/Launcher;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/common/config/ScreenInfo;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v2

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mContext:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr p0, v2

    goto :goto_6e

    :cond_48
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v3

    if-eqz v3, :cond_64

    iget-boolean v3, v2, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v3, :cond_64

    iget-boolean v2, v2, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-nez v2, :cond_64

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mContext:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f070617

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_6e

    :cond_64
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mContext:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_6e
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-eq v2, p0, :cond_77

    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_77
    return-void
.end method

.method private showRecommendContent()V
    .registers 5

    const-string/jumbo v0, "showRecommendContent mNeedHandleNoConnection = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mNeedHandleNoConnection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "mNeedHandleLoadFailed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mNeedHandleLoadFailed:Z

    const-string v2, "FooterController"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher/folder/recommend/FooterController;->enableFooterRecommend(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string/jumbo p0, "showRecommendContent, switch off."

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2b
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mLoadMsgTip:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher/wallpaper/WallpaperUtil;->updateTextColor(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendedTitle:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher/wallpaper/WallpaperUtil;->updateTextColor(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mLoadMsgTip:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setForceDarkAllowed(Z)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendedTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setForceDarkAllowed(Z)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendedNext:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setForceDarkAllowed(Z)V

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FooterController;->updateRecommendImageViewColor()V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v0

    if-nez v0, :cond_57

    const-string/jumbo p0, "showRecommendContent, folder closed."

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_57
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mFolder:Lcom/android/launcher3/folder/OplusFolder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {v0}, Lcom/android/launcher3/folder/IFolderExt;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_68

    const-string/jumbo p0, "showRecommendContent, folder is animating."

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_68
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mLoadMsgTip:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_77

    const-string/jumbo p0, "showRecommendContent, mLoadMsgTip is visible."

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_77
    iget-boolean v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mNeedHandleNoConnection:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_8e

    iput-boolean v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mNeedHandleNoConnection:Z

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendFooter:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendedTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendedNext:Landroid/widget/ImageView;

    invoke-static {v0, v1, v3}, Lcom/android/launcher/folder/recommend/RecommendUtils;->animateFooterTitle(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FooterController;->handleNoConnection()V

    return-void

    :cond_8e
    iget-boolean v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mNeedHandleLoadFailed:Z

    if-eqz v0, :cond_a4

    iput-boolean v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mNeedHandleLoadFailed:Z

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendFooter:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendedTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendedNext:Landroid/widget/ImageView;

    invoke-static {v0, v1, v3}, Lcom/android/launcher/folder/recommend/RecommendUtils;->animateFooterTitle(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FooterController;->handleLoadFailed()V

    return-void

    :cond_a4
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMarketManager:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->getCallbackRegistered()Z

    move-result v0

    if-nez v0, :cond_bb

    const-string/jumbo v0, "showRecommendContent, mCallback is not registered."

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMarketManager:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->isServiceDied()Z

    move-result v0

    if-eqz v0, :cond_bb

    return-void

    :cond_bb
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendFooter:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_fd

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendedTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendedNext:Landroid/widget/ImageView;

    invoke-static {v0, v2, v3}, Lcom/android/launcher/folder/recommend/RecommendUtils;->animateFooterTitle(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/launcher/folder/recommend/c;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher/folder/recommend/c;-><init>(Lcom/android/launcher/folder/recommend/FooterController;I)V

    iget-object v2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mAdapter:Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;

    invoke-virtual {v2, v0}, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->showWithAnimation(Ljava/lang/Runnable;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mAnimation:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendFooter:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecyclerView:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    if-eqz v0, :cond_f1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x5

    if-le v0, v2, :cond_f1

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendedNext:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_f1
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mWorkHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    new-instance v1, Lcom/android/launcher/folder/recommend/c;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/folder/recommend/c;-><init>(Lcom/android/launcher/folder/recommend/FooterController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_103

    :cond_fd
    const-string/jumbo p0, "showRecommendContent, content is VISIBLE"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_103
    return-void
.end method

.method private updateRecommendImageViewColor()V
    .registers 4

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mContext:Lcom/android/launcher3/Launcher;

    const v2, 0x7f06069e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendedNext:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_21

    :cond_1c
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendedNext:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->clearColorFilter()V

    :goto_21
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecyclerView:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

    if-eqz v0, :cond_11

    const-string v0, "FooterController"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecyclerView:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;->setScrollEnable(Z)V

    :cond_11
    return-void
.end method

.method public enableFooterRecommend(Lcom/android/launcher3/Launcher;)Z
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/launcher/folder/recommend/FooterController;->supportFooterRecommend(Lcom/android/launcher3/Launcher;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_12

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mSwitchManageHelper:Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->isSwitchEnable()Z

    move-result p0

    if-eqz p0, :cond_12

    move p0, v0

    goto :goto_13

    :cond_12
    move p0, v1

    :goto_13
    sget-boolean p1, Lcom/android/common/config/FeatureOption;->isRLMExpDevice:Z

    if-eqz p1, :cond_24

    if-eqz p0, :cond_22

    sget-object p0, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->INSTANCE:Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->isRecommendEnable()Z

    move-result p0

    if-eqz p0, :cond_22

    goto :goto_23

    :cond_22
    move v0, v1

    :goto_23
    return v0

    :cond_24
    return p0
.end method

.method public folderOpenOrClose(ZZ)V
    .registers 6

    const-string v0, "folderOpenOrClose: open ="

    const-string v1, ", complete = "

    const-string v2, "FooterController"

    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/common/multiapp/b;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_91

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher/folder/recommend/FooterController;->supportFooterRecommend(Lcom/android/launcher3/Launcher;)Z

    move-result p1

    const/16 v1, 0x8

    if-eqz p1, :cond_8b

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FooterController;->checkSwitchCallback()V

    if-eqz p2, :cond_24

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FooterController;->showRecommendContent()V

    goto/16 :goto_c5

    :cond_24
    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendFooter:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    iget-object p2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mContext:Lcom/android/launcher3/Launcher;

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p2, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p2

    if-nez p2, :cond_3c

    iget-object p2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mContext:Lcom/android/launcher3/Launcher;

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p2, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p2

    if-nez p2, :cond_3c

    const/4 p2, 0x1

    goto :goto_3d

    :cond_3c
    move p2, v0

    :goto_3d
    invoke-virtual {p1, p2, v0}, Lcom/android/launcher/folder/recommend/view/RecommendContainer;->setDisableState(ZZ)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mContext:Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->isSwitchEnable()Z

    move-result p1

    if-nez p1, :cond_51

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendFooter:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_51
    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMarketManager:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    if-eqz p1, :cond_6b

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->getCallMarket()Lcom/android/launcher/folder/recommend/market/CallMarket;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/launcher/folder/recommend/market/CallMarket;->setFootController(Lcom/android/launcher/folder/recommend/FooterController;)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMarketManager:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->startMarketService()Z

    move-result p1

    if-nez p1, :cond_68

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FooterController;->requestLoadRecommendData()V

    goto :goto_6b

    :cond_68
    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FooterController;->addTimeoutCheck()V

    :cond_6b
    :goto_6b
    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecyclerView:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

    if-eqz p1, :cond_c5

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FooterController;->updateRecommendImageViewColor()V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMarketManager:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    if-eqz p1, :cond_7d

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->isServiceDied()Z

    move-result p1

    if-eqz p1, :cond_7d

    return-void

    :cond_7d
    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendFooter:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecyclerView:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_c5

    :cond_8b
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendFooter:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_c5

    :cond_91
    if-eqz p2, :cond_bf

    iget p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mIconLoadedCount:I

    if-eqz p1, :cond_9a

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FooterController;->hideAndResetRecommendFooter()V

    :cond_9a
    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecyclerView:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

    if-eqz p1, :cond_c5

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecyclerView:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

    invoke-virtual {p1, v0}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;->resetCurrentPage(I)V

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FooterController;->checkSwitchEnable()V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMarketManager:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    if-eqz p1, :cond_ba

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->getCallMarket()Lcom/android/launcher/folder/recommend/market/CallMarket;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/android/launcher/folder/recommend/market/CallMarket;->setFootController(Lcom/android/launcher/folder/recommend/FooterController;)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMarketManager:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->registerUnbindCallback()V

    :cond_ba
    iput-boolean v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mNeedHandleNoConnection:Z

    iput-boolean v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mNeedHandleLoadFailed:Z

    goto :goto_c5

    :cond_bf
    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FooterController;->recycle()V

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FooterController;->hideAndResetRecommendFooter()V

    :cond_c5
    :goto_c5
    return-void
.end method

.method public folderRecommendAnimForToggleBar(Z)Landroid/animation/Animator;
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendFooter:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher/folder/recommend/view/RecommendContainer;->setDisableState(ZZ)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mContext:Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method public getData()Ljava/util/ArrayList;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/folder/recommend/bean/DataBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getDesiredHeight()I
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mSwitchManageHelper:Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->isShouldRecommend()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mContext:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07062c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public getFolder()Lcom/android/launcher3/folder/Folder;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mFolder:Lcom/android/launcher3/folder/OplusFolder;

    return-object p0
.end method

.method public getRecommendFooter()Lcom/android/launcher/folder/recommend/view/RecommendContainer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendFooter:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    return-object p0
.end method

.method public getRecommendId()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mFolder:Lcom/android/launcher3/folder/OplusFolder;

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget p0, p0, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    return p0
.end method

.method public getRecycleView()Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecyclerView:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

    return-object p0
.end method

.method public handleAppIconUri(Lcom/android/launcher/folder/recommend/bean/IconUrlBean;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mWorkHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    new-instance v1, Landroidx/constraintlayout/motion/widget/a;

    invoke-direct {v1, p0, p1}, Landroidx/constraintlayout/motion/widget/a;-><init>(Lcom/android/launcher/folder/recommend/FooterController;Lcom/android/launcher/folder/recommend/bean/IconUrlBean;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyNoConnection()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mWorkHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mLoadFailCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mWorkHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mLoadFailCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_11
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMainHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    const/16 v0, 0x6c0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0414

    if-ne p1, v0, :cond_c

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FooterController;->moveToNextPage()V

    :cond_c
    return-void
.end method

.method public onDestroy()V
    .registers 3

    const-string v0, "FooterController"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mWorkHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mWorkHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    :cond_12
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMainHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    if-eqz v0, :cond_1b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMainHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    :cond_1b
    return-void
.end method

.method public onItemClick(Landroid/view/View;IILjava/lang/Object;)V
    .registers 7

    const-wide/16 v0, 0x15e

    invoke-static {v0, v1}, Lcom/android/common/util/ClickUtils;->clickable(J)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    rem-int/lit8 p2, p2, 0x5

    mul-int/lit8 p2, p2, 0x5

    add-int/2addr p2, p3

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_2e

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_26

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_2e

    :cond_26
    const-string p0, "Data has not loaded. click index = "

    const-string p1, "FooterController"

    invoke-static {p0, p2, p1}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_2e
    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mAdapter:Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->setPageAnimateForbidden(Z)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/folder/recommend/bean/DataBean;

    iget-object p3, p0, Lcom/android/launcher/folder/recommend/FooterController;->mContext:Lcom/android/launcher3/Launcher;

    invoke-static {p1, p3}, Lcom/android/launcher/folder/recommend/RecommendUtils;->jumpToDetail(Lcom/android/launcher/folder/recommend/bean/DataBean;Lcom/android/launcher3/Launcher;)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMarketManager:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    new-instance p3, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/folder/recommend/bean/DataBean;

    invoke-direct {p3, p4, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->doRecommendAppsStat(Landroid/util/Pair;)V

    return-void
.end method

.method public recommendIsShowing()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendFooter:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public scanToWhichPosition(Lcom/android/launcher/folder/recommend/bean/RecommendAppsChangedBean;)V
    .registers 4

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/bean/RecommendAppsChangedBean;->getSelectPkg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher/folder/recommend/FooterController;->getDataBeanForPkgName(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v1, :cond_f

    goto :goto_29

    :cond_f
    iget-object p1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMainHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    const/16 v1, 0x6bd

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMainHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_29
    :goto_29
    const-string/jumbo p0, "scanToWhichPosition: can\'t find a dataBean for "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/bean/RecommendAppsChangedBean;->getSelectPkg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FooterController"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCallbackRegisterFailed()V
    .registers 3

    const-string v0, "FooterController"

    const-string/jumbo v1, "setCallbackRegisterFailed:"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMarketManager:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    if-eqz v0, :cond_15

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->setCallbackRegistered(Z)V

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMarketManager:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->unbindService()V

    :cond_15
    return-void
.end method

.method public setCallbackRegisterSuccess()V
    .registers 4

    const-string v0, "FooterController"

    const-string/jumbo v1, "setCallbackRegisterSuccess:"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMarketManager:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->setCallbackRegistered(Z)V

    :cond_10
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMainHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    new-instance v1, Lcom/android/launcher/folder/recommend/c;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/folder/recommend/c;-><init>(Lcom/android/launcher/folder/recommend/FooterController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/recommend/bean/DataBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_a8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_a8

    :cond_a
    const-string v0, "FooterController"

    const-string/jumbo v1, "setData: first item:"

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_25
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v1

    if-eqz v1, :cond_33

    new-instance v1, Lcom/android/launcher/badge/f;

    invoke-direct {v1, p0}, Lcom/android/launcher/badge/f;-><init>(Lcom/android/launcher/folder/recommend/FooterController;)V

    invoke-interface {p1, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_33
    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mData:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_43
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/folder/recommend/bean/DataBean;

    invoke-static {}, Lcom/android/launcher/folder/recommend/RecommendUtils;->getDownloadedApps()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_57
    :goto_57
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_57

    invoke-virtual {v1}, Lcom/android/launcher/folder/recommend/bean/DataBean;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_57

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/launcher/folder/recommend/bean/DataBean;->setDownloaded(Z)V

    goto :goto_57

    :cond_78
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_25 .. :try_end_79} :catchall_a5

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mWorkHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mLoadFailCheck:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_8a

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mWorkHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mLoadFailCheck:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_8a
    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Lcom/android/launcher/theme/LauncherIconConfig;->getInstance(Landroid/content/res/Resources;)Lcom/android/launcher/theme/LauncherIconConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/theme/LauncherIconConfig;->getIconConfig()Lcom/oplus/uxicon/helper/IconConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/uxicon/helper/IconConfig;->copy()Lcom/oplus/uxicon/helper/IconConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    const/16 v0, 0x15e0

    invoke-virtual {p1, v0}, Lcom/oplus/uxicon/helper/IconConfig;->setIconSize(I)V

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {p0, v0}, Lcom/oplus/uxicon/helper/IconConfig;->setForegroundSize(I)V

    return-void

    :catchall_a5
    move-exception p0

    :try_start_a6
    monitor-exit v0
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    throw p0

    :cond_a8
    :goto_a8
    const-string p1, "FooterController"

    const-string/jumbo v0, "setData: load recommend data is null or size is insufficient"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mWorkHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mLoadFailCheck:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_c1

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mWorkHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mLoadFailCheck:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_c1
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMainHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    const/16 p1, 0x6bf

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setScrollEnable()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecyclerView:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;->setScrollEnable(Z)V

    :cond_8
    return-void
.end method

.method public supportFooterRecommend(Lcom/android/launcher3/Launcher;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mSwitchManageHelper:Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->isAppStorePreEnable()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0, p1}, Lcom/android/launcher/folder/recommend/FooterController;->isLauncherCommonState(Lcom/android/launcher3/Launcher;)Z

    move-result p1

    if-eqz p1, :cond_16

    iget-boolean p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mIsSpecifiedFolder:Z

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public switchChanged(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMainHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    new-instance v1, Lcom/android/common/util/g0;

    invoke-direct {v1, p0, p1}, Lcom/android/common/util/g0;-><init>(Lcom/android/launcher/folder/recommend/FooterController;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateBackgroundMargin()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendFooter:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_39

    :cond_b
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendFooter:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMeasuredHeight:I

    if-eq v1, v0, :cond_39

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mFolder:Lcom/android/launcher3/folder/OplusFolder;

    iget-object v1, v1, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {v1}, Lcom/android/launcher3/folder/IFolderExt;->getContentBackground()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mFolder:Lcom/android/launcher3/folder/OplusFolder;

    iget-object v2, v2, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {v2}, Lcom/android/launcher3/folder/IFolderExt;->getContentBackground()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mMeasuredHeight:I

    :cond_39
    :goto_39
    return-void
.end method

.method public updatePadding(Lcom/android/launcher3/Launcher;Z)V
    .registers 8

    invoke-direct {p0, p1}, Lcom/android/launcher/folder/recommend/FooterController;->isLauncherCommonState(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_c4

    iget-boolean v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mIsSpecifiedFolder:Z

    if-nez v0, :cond_c

    goto/16 :goto_c4

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updatePadding: needUpLift = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FooterController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher/folder/recommend/FooterController;->mFolder:Lcom/android/launcher3/folder/OplusFolder;

    if-eqz v3, :cond_6f

    iget-object v4, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendedTitle:Landroid/widget/TextView;

    if-eqz v4, :cond_6f

    if-eqz v2, :cond_6f

    invoke-virtual {v3}, Lcom/android/launcher3/folder/OplusFolder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v3

    if-nez v3, :cond_47

    return-void

    :cond_47
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendedTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    if-eqz p1, :cond_68

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_6a

    :cond_68
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_6a
    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecommendedTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6f
    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mRecyclerView:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

    if-eqz p1, :cond_76

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;->updatePageWidth()V

    :cond_76
    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mAdapter:Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;

    if-eqz p1, :cond_8f

    iget p1, v0, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextSizeBasePx:I

    int-to-float p1, p1

    sget-object v0, Lcom/android/common/util/FontManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mContext:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/util/FontManager;

    iget v0, v0, Lcom/android/common/util/FontManager;->mTextSizeScale:F

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mAdapter:Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;

    invoke-virtual {v0, p1}, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->setBubbleTextViewSize(F)V

    :cond_8f
    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mPlaceHolder:Landroid/view/View;

    if-eqz p2, :cond_96

    const/16 v0, 0x8

    goto :goto_97

    :cond_96
    const/4 v0, 0x0

    :goto_97
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    if-nez p2, :cond_c4

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController;->mPlaceHolder:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    sget-boolean p2, Lcom/android/common/config/ScreenInfo;->hasNavigationBar:Z

    if-nez p2, :cond_b4

    iget-object p2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f07062e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_bf

    :cond_b4
    iget-object p2, p0, Lcom/android/launcher/folder/recommend/FooterController;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f07062d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_bf
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController;->mPlaceHolder:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c4
    :goto_c4
    return-void
.end method
