.class public final Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;
.super Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter$Companion;,
        Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter$LayoutVH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter<",
        "Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter$LayoutVH;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter$Companion;

.field private static final MIN_MAX_COLUMN:[I

.field private static final MIN_MAX_ROW:[I

.field private static final TAG:Ljava/lang/String; = "ToggleBarLayoutAdapter"


# instance fields
.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mLayoutConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSelectedPos:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->Companion:Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter$Companion;

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_17

    new-array v1, v2, [I

    fill-array-data v1, :array_46

    goto :goto_28

    :cond_17
    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_23

    new-array v1, v2, [I

    fill-array-data v1, :array_4e

    goto :goto_28

    :cond_23
    new-array v1, v2, [I

    fill-array-data v1, :array_56

    :goto_28
    sput-object v1, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->MIN_MAX_COLUMN:[I

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v1

    if-nez v1, :cond_3d

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_3d

    :cond_37
    new-array v0, v2, [I

    fill-array-data v0, :array_5e

    goto :goto_42

    :cond_3d
    :goto_3d
    new-array v0, v2, [I

    fill-array-data v0, :array_66

    :goto_42
    sput-object v0, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->MIN_MAX_ROW:[I

    return-void

    nop

    :array_46
    .array-data 4
        0x4
        0x5
    .end array-data

    :array_4e
    .array-data 4
        0x5
        0x6
    .end array-data

    :array_56
    .array-data 4
        0x3
        0x5
    .end array-data

    :array_5e
    .array-data 4
        0x5
        0x6
    .end array-data

    :array_66
    .array-data 4
        0x4
        0x5
    .end array-data
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 4

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "from(launcher)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->mLayoutConfigs:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->mSelectedPos:I

    invoke-direct {p0}, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->initToggleBarLayoutConfigs()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;ILcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter$LayoutVH;Landroid/view/View;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->onBindViewHolder$lambda-0(Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;ILcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter$LayoutVH;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getMIN_MAX_COLUMN$cp()[I
    .registers 1

    sget-object v0, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->MIN_MAX_COLUMN:[I

    return-object v0
.end method

.method public static final synthetic access$getMIN_MAX_ROW$cp()[I
    .registers 1

    sget-object v0, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->MIN_MAX_ROW:[I

    return-object v0
.end method

.method private final initToggleBarLayoutConfigs()V
    .registers 14

    iget-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/UiConfig;->getCurrentLayoutSettings(Landroid/content/Context;)[I

    move-result-object v0

    sget-object v1, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->MIN_MAX_COLUMN:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    if-gt v3, v1, :cond_57

    :goto_10
    add-int/lit8 v5, v3, 0x1

    sget-object v6, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->MIN_MAX_ROW:[I

    aget v7, v6, v2

    aget v6, v6, v4

    if-gt v7, v6, :cond_52

    :goto_1a
    add-int/lit8 v8, v7, 0x1

    invoke-static {v3, v7}, Lcom/android/launcher/UiConfig;->isSupportLayout(II)Z

    move-result v9

    if-nez v9, :cond_23

    goto :goto_4d

    :cond_23
    new-instance v9, Lcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;

    invoke-direct {v9}, Lcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;-><init>()V

    invoke-virtual {v9, v7}, Lcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;->setMRow(I)V

    invoke-virtual {v9, v3}, Lcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;->setMColumn(I)V

    aget v10, v0, v2

    if-ne v10, v3, :cond_48

    aget v10, v0, v4

    if-ne v10, v7, :cond_48

    invoke-virtual {v9, v4}, Lcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;->setMSelected(Z)V

    iget-object v10, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->mLayoutConfigs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->mSelectedPos:I

    const-string v11, "initToggleBarLayoutConfigs, mSelectedPos = "

    const-string v12, "ToggleBarLayoutAdapter"

    invoke-static {v10, v11, v12}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_48
    iget-object v10, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->mLayoutConfigs:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4d
    if-ne v7, v6, :cond_50

    goto :goto_52

    :cond_50
    move v7, v8

    goto :goto_1a

    :cond_52
    :goto_52
    if-ne v3, v1, :cond_55

    goto :goto_57

    :cond_55
    move v3, v5

    goto :goto_10

    :cond_57
    :goto_57
    return-void
.end method

.method private static final onBindViewHolder$lambda-0(Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;ILcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter$LayoutVH;Landroid/view/View;)V
    .registers 8

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$layoutConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$holder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->mSelectedPos:I

    if-eq v0, p1, :cond_53

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->getMHaveDoneDestroyAnim()Z

    move-result v0

    if-nez v0, :cond_53

    new-instance p4, Lcom/android/launcher/togglebar/LayoutSettingsHelper$PreviewGridChangedTask;

    iget-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;->getMColumn()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;->getMRow()I

    move-result p2

    const/4 v2, 0x0

    invoke-direct {p4, v0, v1, p2, v2}, Lcom/android/launcher/togglebar/LayoutSettingsHelper$PreviewGridChangedTask;-><init>(Landroid/content/Context;IILjava/lang/Runnable;)V

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/lang/Void;

    invoke-virtual {p4, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget p4, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->mSelectedPos:I

    if-ltz p4, :cond_3f

    iget-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->mLayoutConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;

    invoke-virtual {p4, p2}, Lcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;->setMSelected(Z)V

    :cond_3f
    iget-object p2, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->mLayoutConfigs:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;

    const/4 p4, 0x1

    invoke-virtual {p2, p4}, Lcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;->setMSelected(Z)V

    iget p2, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->mSelectedPos:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->updateViewSelectState(IILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iput p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->mSelectedPos:I

    goto :goto_75

    :cond_53
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "onClick ignore position "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " select "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->mSelectedPos:I

    const-string p1, "ToggleBarLayoutAdapter"

    invoke-static {p2, p0, p1}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :goto_75
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->mLayoutConfigs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getSelectInfo()Lcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;
    .registers 3

    iget v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->mSelectedPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 p0, 0x0

    goto :goto_f

    :cond_7
    iget-object p0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->mLayoutConfigs:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;

    :goto_f
    return-object p0
.end method

.method public getSelectedPosition()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->mSelectedPos:I

    return p0
.end method

.method public isPageViewHolder()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter$LayoutVH;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->onBindViewHolder(Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter$LayoutVH;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter$LayoutVH;I)V
    .registers 7

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;

    iget-object v1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->mLayoutConfigs:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "mLayoutConfigs[position]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;

    invoke-virtual {v1}, Lcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;->getMColumn()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;->getMRow()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->setColumnRow(II)V

    invoke-virtual {v1}, Lcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;->getMSelected()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->setSelected(Z)V

    invoke-virtual {v1}, Lcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;->getMSelected()Z

    move-result v2

    if-eqz v2, :cond_30

    iput p2, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->mSelectedPos:I

    :cond_30
    new-instance v2, Lcom/android/launcher/pagepreview/a;

    invoke-direct {v2, p0, p2, v1, p1}, Lcom/android/launcher/pagepreview/a;-><init>(Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;ILcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter$LayoutVH;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter$LayoutVH;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter$LayoutVH;
    .registers 5

    const-string/jumbo p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter$LayoutVH;

    iget-object p0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0110

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p1, "mLayoutInflater.inflate(…ar_layout, parent, false)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0}, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter$LayoutVH;-><init>(Landroid/view/View;)V

    return-object p2
.end method
