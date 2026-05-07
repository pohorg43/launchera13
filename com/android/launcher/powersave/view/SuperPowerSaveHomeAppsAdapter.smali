.class public Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter$EnterEditModeCallback;,
        Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter$RemoveSelectedAppCallback;,
        Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SuperPowerSaveAppsGridAdapter"

.field public static final VIEW_TYPE_APP_ICON:I = 0x0

.field public static final VIEW_TYPE_TIP_ICON:I = 0x1


# instance fields
.field private final mAppInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEditMode:Z

.field private mEnterEditModeCallback:Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter$EnterEditModeCallback;

.field private final mLauncher:Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mRemoveSelectedAppCallback:Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter$RemoveSelectedAppCallback;


# direct methods
.method public constructor <init>(Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;Ljava/util/List;Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter$RemoveSelectedAppCallback;Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter$EnterEditModeCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;",
            "Ljava/util/List<",
            "Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;",
            ">;",
            "Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter$RemoveSelectedAppCallback;",
            "Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter$EnterEditModeCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;->mRemoveSelectedAppCallback:Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter$RemoveSelectedAppCallback;

    iput-object v0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;->mEnterEditModeCallback:Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter$EnterEditModeCallback;

    iput-object p2, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;->mAppInfoList:Ljava/util/List;

    iput-object p1, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;->mLauncher:Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;->mRemoveSelectedAppCallback:Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter$RemoveSelectedAppCallback;

    iput-object p4, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;->mEnterEditModeCallback:Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter$EnterEditModeCallback;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;Landroid/view/View;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;->lambda$initItemView$1(Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;->lambda$initItemView$0(Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;Landroid/view/View;)V

    return-void
.end method

.method private initItemView(Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter$ViewHolder;I)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initItemView  position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuperPowerSaveAppsGridAdapter"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "initItemView holder is null, position = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2d
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060422

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/BubbleTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;->mLauncher:Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;

    invoke-static {v0}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070b97

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;->forSetIconSize(I)V

    iget-object v0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;->mAppInfoList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;

    invoke-virtual {p2}, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;->getViewType()I

    move-result v0

    if-nez v0, :cond_78

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;->applyFromApplicationInfo(Lcom/android/launcher3/model/data/AppInfo;Z)V

    iget-object v1, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    iget-boolean v2, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;->mEditMode:Z

    invoke-interface {v1, v2, v0, v0}, Lcom/android/launcher3/iconrender/impl/ISelectableIcon;->applySelectedState(ZIZ)V

    invoke-virtual {p2}, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;->isSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_78
    new-instance v0, Lcom/android/launcher/folder/recommend/g;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher/folder/recommend/g;-><init>(Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, La0/a;

    invoke-direct {v0, p0, p1, p2}, La0/a;-><init>(Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private synthetic lambda$initItemView$0(Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;Landroid/view/View;)V
    .registers 6

    invoke-virtual {p1}, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;->isSelected()Z

    move-result p3

    invoke-virtual {p1}, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;->getViewType()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;->mEditMode:Z

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    if-eqz p3, :cond_17

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setSelected(Z)V

    move v1, v0

    goto :goto_1a

    :cond_17
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_1a
    invoke-virtual {p1, v1}, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;->setSelected(Z)V

    iget-object p0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;->mRemoveSelectedAppCallback:Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter$RemoveSelectedAppCallback;

    invoke-interface {p0, p1}, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter$RemoveSelectedAppCallback;->addSelectedApp(Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;)V

    goto :goto_3a

    :cond_23
    iget-object p0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;->mLauncher:Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;

    iget-object p2, p1, Lcom/android/launcher3/model/data/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p2, p1}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->startActivitySafe(Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_3a

    :cond_2b
    invoke-virtual {p1}, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;->getViewType()I

    move-result p2

    if-ne p2, v1, :cond_3a

    iget-object p0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;->mLauncher:Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;

    iget p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {p0, p2, p1}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->startSelectAppActivity(II)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method private synthetic lambda$initItemView$1(Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;Landroid/view/View;)Z
    .registers 4

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {p2, p3}, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;->mRemoveSelectedAppCallback:Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter$RemoveSelectedAppCallback;

    invoke-interface {p1, p2}, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter$RemoveSelectedAppCallback;->addSelectedApp(Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;)V

    iget-object p0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;->mEnterEditModeCallback:Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter$EnterEditModeCallback;

    invoke-interface {p0}, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter$EnterEditModeCallback;->enterEditMode()V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getItemCount()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;->mAppInfoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;->mAppInfoList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;

    invoke-virtual {p0}, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;->getViewType()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3
    .param p1  # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;->onBindViewHolder(Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter$ViewHolder;I)V
    .registers 3
    .param p1  # Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;->initItemView(Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter$ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3
    .param p1  # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter$ViewHolder;
    .registers 4
    .param p1  # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 p1, 0x0

    const v0, 0x7f0d01df

    if-eqz p2, :cond_32

    iget-object p2, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p2, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;

    iget-object p2, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;->mLauncher:Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0807c5

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    new-instance v0, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-direct {v0, p2}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;->mLauncher:Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;

    const p2, 0x7f1204f2

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;->applyIcon(Lcom/android/launcher3/icons/FastBitmapDrawable;Ljava/lang/CharSequence;)V

    new-instance p0, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter$ViewHolder;

    invoke-direct {p0, p1}, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0

    :cond_32
    iget-object p0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;

    new-instance p1, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter$ViewHolder;

    invoke-direct {p1, p0}, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public setEditMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;->mEditMode:Z

    return-void
.end method
