.class public Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter$GridSpanSizer;,
        Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final APPS_PER_ROW:I = 0x4

.field private static final ITEM_ICON_RATIO:F = 1.2f

.field public static final TAG:Ljava/lang/String; = "SuperPowerSaveSelectAppsAdapter"

.field public static final VIEW_TYPE_ALL_APPS_DIVIDER:I = 0x10

.field public static final VIEW_TYPE_EMPTY_SEARCH:I = 0x4

.field public static final VIEW_TYPE_ICON:I = 0x2

.field private static final VIEW_TYPE_MASK_ICON:I = 0x2


# instance fields
.field private final mApps:Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;

.field private final mAppsPerRow:I

.field private final mClickPosition:[I

.field private final mContext:Landroid/content/Context;

.field private final mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

.field private final mGridLayoutMgr:Landroidx/recyclerview/widget/GridLayoutManager;

.field private final mGridSizer:Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter$GridSpanSizer;

.field private mIsHideForGotoLauncher:Z

.field private mIsKeyBoardShow:Z

.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;)V
    .registers 5

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->mClickPosition:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->mIsKeyBoardShow:Z

    iput-boolean v0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->mIsHideForGotoLauncher:Z

    iput-object p2, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->mApps:Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;

    iput-object p1, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->mContext:Landroid/content/Context;

    new-instance p2, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter$GridSpanSizer;

    invoke-direct {p2, p0}, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter$GridSpanSizer;-><init>(Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;)V

    iput-object p2, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->mGridSizer:Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter$GridSpanSizer;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->mGridLayoutMgr:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object p2, p1

    check-cast p2, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;

    invoke-virtual {p2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iput v1, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->mAppsPerRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    check-cast p1, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;

    new-instance p2, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter$1;

    invoke-direct {p2, p0, p1}, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter$1;-><init>(Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;)V

    invoke-static {p1, p2}, Lcom/android/launcher/powersave/utils/SoftKeyBoardListener;->setListener(Landroid/app/Activity;Lcom/android/launcher/powersave/utils/SoftKeyBoardListener$SoftKeyBoardChangeListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->lambda$onCreateViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$002(Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->mIsKeyBoardShow:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->mIsHideForGotoLauncher:Z

    return p0
.end method

.method public static synthetic access$102(Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->mIsHideForGotoLauncher:Z

    return p1
.end method

.method public static synthetic access$200(Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;)Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->mApps:Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;

    return-object p0
.end method

.method public static synthetic access$300(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->isIconViewType(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->mAppsPerRow:I

    return p0
.end method

.method private static isIconViewType(I)Z
    .registers 2

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->isViewType(II)Z

    move-result p0

    return p0
.end method

.method private static isViewType(II)Z
    .registers 2

    and-int/2addr p0, p1

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method private synthetic lambda$onCreateViewHolder$0(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4f

    check-cast p1, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->mClickPosition:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v2, p1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    const-string v3, "CLICK_APP_INFO_COMPONENT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->mClickPosition:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const-string v3, "CLICK_X"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->mClickPosition:[I

    aget v2, v2, v1

    const-string v3, "CLICK_Y"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const-string v2, "CLICK_APP_USER_IDENTIFIER"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;

    const/16 v2, 0x65

    invoke-virtual {p1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-boolean v0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->mIsKeyBoardShow:Z

    if-eqz v0, :cond_4c

    iput-boolean v1, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->mIsHideForGotoLauncher:Z

    invoke-virtual {p1}, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->hideKeyBoard()V

    goto :goto_4f

    :cond_4c
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_4f
    :goto_4f
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->mApps:Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;

    invoke-virtual {p0}, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->mApps:Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;

    invoke-virtual {p0}, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList$AdapterItem;

    iget p0, p0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList$AdapterItem;->viewType:I

    return p0
.end method

.method public getLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->mGridLayoutMgr:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method public isKeyBoardShow()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->mIsKeyBoardShow:Z

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->onBindViewHolder(Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter$ViewHolder;I)V
    .registers 5

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_33

    const/4 p0, 0x4

    if-eq v0, p0, :cond_1e

    const/16 p2, 0x10

    if-eq v0, p2, :cond_f

    goto :goto_5c

    :cond_f
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a0288

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5c

    :cond_1e
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p1, 0x7f0a02b6

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/oplus/anim/EffectiveAnimationView;

    const-string/jumbo p1, "search_empty.json"

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->playAnimation()V

    goto :goto_5c

    :cond_33
    iget-object v0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->mApps:Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;

    invoke-virtual {v0}, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList$AdapterItem;

    iget-object p2, p2, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList$AdapterItem;->appInfo:Lcom/android/launcher3/model/data/AppInfo;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->reset()V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/BubbleTextView;->applyFromApplicationInfo(Lcom/android/launcher3/model/data/AppInfo;)V

    iget-object p0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f060422

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/BubbleTextView;->setTextColor(I)V

    :goto_5c
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter$ViewHolder;
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p2, v0, :cond_31

    const/4 v0, 0x4

    if-eq p2, v0, :cond_22

    const/16 v0, 0x10

    if-ne p2, v0, :cond_1a

    new-instance p2, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter$ViewHolder;

    iget-object p0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0038

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_1a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unexpected view type"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    new-instance p2, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter$ViewHolder;

    iget-object p0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d01e4

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_31
    iget-object p2, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d01de

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    new-instance p2, Lcom/android/launcher/v;

    invoke-direct {p2, p0}, Lcom/android/launcher/v;-><init>(Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget-object p0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    int-to-float p0, p0

    const v0, 0x3f99999a  # 1.2f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter$ViewHolder;

    invoke-direct {p0, p1}, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public bridge synthetic onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 2

    check-cast p1, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->onFailedToRecycleView(Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter$ViewHolder;)Z

    move-result p0

    return p0
.end method

.method public onFailedToRecycleView(Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter$ViewHolder;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public setClickPosition(II)V
    .registers 4

    iget-object p0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->mClickPosition:[I

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 p1, 0x1

    aput p2, p0, p1

    return-void
.end method
