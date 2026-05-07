.class public final Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;
.super Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter$EffectVH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter<",
        "Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter$EffectVH;",
        ">;"
    }
.end annotation


# instance fields
.field private mEffectItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/togglebar/item/ToggleBarEffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mSelectedPos:I


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 4

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "from(launcher)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;->mEffectItems:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p1, v0}, Lcom/android/launcher/effect/LauncherEffect;->parserEffects(Landroid/content/Context;Ljava/util/ArrayList;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;->mSelectedPos:I

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;ILcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter$EffectVH;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;->onBindViewHolder$lambda-0(Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;ILcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter$EffectVH;Landroid/view/View;)V

    return-void
.end method

.method private static final onBindViewHolder$lambda-0(Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;ILcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter$EffectVH;Landroid/view/View;)V
    .registers 6

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$holder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->getMHaveDoneDestroyAnim()Z

    move-result v0

    if-eqz v0, :cond_34

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onClick ignore position "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " select "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;->mSelectedPos:I

    const-string p1, "ToggleBarEffectAdapter"

    invoke-static {p2, p0, p1}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_34
    iget-object p3, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;->mEffectItems:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/launcher/togglebar/item/ToggleBarEffectItem;

    invoke-virtual {p3}, Lcom/android/launcher/togglebar/item/ToggleBarEffectItem;->getClassName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/launcher/effect/EffectSetting;->setToggleBarPreviewEffectClzName(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/launcher3/OplusWorkspace;->updateParaWhenEffectChange()V

    iget-object p3, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez p3, :cond_51

    goto :goto_69

    :cond_51
    invoke-virtual {p3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p3

    if-nez p3, :cond_58

    goto :goto_69

    :cond_58
    iget-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;->mEffectItems:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;->mSelectedPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/togglebar/item/ToggleBarEffectItem;

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/item/ToggleBarEffectItem;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/launcher3/OplusWorkspace;->showEffectPreview(Ljava/lang/String;)V

    :goto_69
    iget p3, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;->mSelectedPos:I

    if-eq p3, p1, :cond_8c

    iget-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;->mEffectItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/launcher/togglebar/item/ToggleBarEffectItem;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/android/launcher/togglebar/item/ToggleBarEffectItem;->setSelected(Z)V

    iget-object p3, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;->mEffectItems:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/launcher/togglebar/item/ToggleBarEffectItem;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/android/launcher/togglebar/item/ToggleBarEffectItem;->setSelected(Z)V

    iget p3, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;->mSelectedPos:I

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->updateViewSelectState(IILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iput p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;->mSelectedPos:I

    :cond_8c
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;->mEffectItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getSelectedItem()Lcom/android/launcher/togglebar/item/ToggleBarEffectItem;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;->mEffectItems:Ljava/util/ArrayList;

    iget p0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;->mSelectedPos:I

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "mEffectItems[mSelectedPos]"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher/togglebar/item/ToggleBarEffectItem;

    return-object p0
.end method

.method public getSelectedPosition()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;->mSelectedPos:I

    return p0
.end method

.method public isPageViewHolder()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter$EffectVH;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;->onBindViewHolder(Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter$EffectVH;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter$EffectVH;I)V
    .registers 6

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;->mEffectItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "mEffectItems[position]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher/togglebar/item/ToggleBarEffectItem;

    invoke-virtual {p1}, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter$EffectVH;->getMIconIv()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/item/ToggleBarItem;->getThumbnailResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p1}, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter$EffectVH;->getMTitleTv()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, v2}, Lcom/android/launcher/togglebar/item/ToggleBarItem;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/item/ToggleBarEffectItem;->isSelected()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Ly/a;

    invoke-direct {v1, p0, p2, p1}, Ly/a;-><init>(Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;ILcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter$EffectVH;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter$EffectVH;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter$EffectVH;
    .registers 5

    const-string/jumbo p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter$EffectVH;

    iget-object p0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d020e

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p1, "mInflater.inflate(R.layo…fect_item, parent, false)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0}, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter$EffectVH;-><init>(Landroid/view/View;)V

    return-object p2
.end method
