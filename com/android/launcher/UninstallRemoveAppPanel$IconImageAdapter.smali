.class final Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/UninstallRemoveAppPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IconImageAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$Companion;,
        Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;,
        Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$OnItemClickLitener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$Companion;

.field private static final ITEM_TYPE_ANIMATION_VIEW:I = 0x1

.field private static final ITEM_TYPE_NORMAL_VIEW:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mItemInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/model/UninstallItemInfoWithIcon;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mOnItemClickLitener:Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$OnItemClickLitener;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->Companion:Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/model/UninstallItemInfoWithIcon;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemInfos"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mItemInfos:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "from(context)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->onBindViewHolder$lambda-0(Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;Landroid/view/View;)V

    return-void
.end method

.method private static final onBindViewHolder$lambda-0(Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;Landroid/view/View;)V
    .registers 3

    const-string/jumbo p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mOnItemClickLitener:Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$OnItemClickLitener;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p1

    invoke-interface {p0, p2, p1}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$OnItemClickLitener;->onItemClick(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mItemInfos:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->onBindViewHolder(Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;I)V
    .registers 15

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "mItemInfos[position]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher/model/UninstallItemInfoWithIcon;

    iget-object v1, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/model/UninstallItemInfoWithIcon;

    invoke-virtual {v1}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getItemInfoWithIcon()Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object v1

    iget-object v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    const-string v3, ""

    if-nez v2, :cond_26

    move-object v2, v3

    goto :goto_2a

    :cond_26
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2a
    invoke-virtual {p0}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->getItemCount()I

    move-result v4

    const v5, 0x7f080638

    const v6, 0x7f0805f5

    const/4 v7, 0x0

    const v8, 0x7f080536

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne v4, v9, :cond_142

    invoke-virtual {p1}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMAnimView()Lcom/sdk/deleteview/DeleteView;

    move-result-object p2

    if-nez p2, :cond_43

    goto :goto_64

    :cond_43
    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0700d7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v3, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget-object p2, p2, Lcom/sdk/deleteview/DeleteView;->a:Ll2/d;

    iput v0, p2, Ll2/d;->l:I

    iput v2, p2, Ll2/d;->m:I

    iput-boolean v9, p2, Ll2/d;->k:Z

    :goto_64
    invoke-virtual {p1}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMAnimView()Lcom/sdk/deleteview/DeleteView;

    move-result-object p2

    if-nez p2, :cond_6b

    goto :goto_6e

    :cond_6b
    invoke-virtual {p2, v8}, Lcom/sdk/deleteview/DeleteView;->setDefaultResource(I)V

    :goto_6e
    invoke-virtual {p1}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMAnimView()Lcom/sdk/deleteview/DeleteView;

    move-result-object p2

    if-nez p2, :cond_75

    goto :goto_83

    :cond_75
    sget-object v0, Lcom/android/common/config/AnimationConstant;->DELETEVIEW_ANIM_SPEECH:Ljava/lang/Float;

    const-string v2, "DELETEVIEW_ANIM_SPEECH"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sdk/deleteview/DeleteView;->setSpeed(F)V

    :goto_83
    iget-object p2, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    if-eqz p2, :cond_141

    iget-object v0, p2, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_141

    iget p2, p2, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    and-int/lit8 v0, p2, 0x4

    const-string/jumbo v2, "obtain(mContext)\n       …fo.bitmap.icon, drawable)"

    if-eqz v0, :cond_b8

    iget-object p2, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMAnimView()Lcom/sdk/deleteview/DeleteView;

    move-result-object p1

    if-nez p1, :cond_a2

    goto/16 :goto_141

    :cond_a2
    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object p0

    iget-object v0, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v0, v0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/icons/LauncherIcons;->makeAppIconAndBadgeTogether(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0, v10}, Lcom/sdk/deleteview/DeleteView;->a(Landroid/graphics/Bitmap;Z)V

    goto/16 :goto_141

    :cond_b8
    and-int/2addr p2, v9

    if-eqz p2, :cond_de

    iget-object p2, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMAnimView()Lcom/sdk/deleteview/DeleteView;

    move-result-object p1

    if-nez p1, :cond_c9

    goto/16 :goto_141

    :cond_c9
    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object p0

    iget-object v0, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v0, v0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/icons/LauncherIcons;->makeAppIconAndBadgeTogether(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0, v10}, Lcom/sdk/deleteview/DeleteView;->a(Landroid/graphics/Bitmap;Z)V

    goto :goto_141

    :cond_de
    iget p2, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const-string v0, "itemInfo.bitmap.icon"

    if-ne p2, v9, :cond_130

    iget-object p2, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p2

    instance-of v2, p2, Lcom/oplus/icons/OplusFastBitmapDrawable;

    if-eqz v2, :cond_f1

    check-cast p2, Lcom/oplus/icons/OplusFastBitmapDrawable;

    goto :goto_f2

    :cond_f1
    move-object p2, v7

    :goto_f2
    if-nez p2, :cond_f5

    goto :goto_f9

    :cond_f5
    invoke-virtual {p2}, Lcom/oplus/icons/OplusFastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :goto_f9
    if-nez v7, :cond_10d

    invoke-virtual {p1}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMAnimView()Lcom/sdk/deleteview/DeleteView;

    move-result-object p0

    if-nez p0, :cond_102

    goto :goto_141

    :cond_102
    iget-object p1, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object p1, p1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v10}, Lcom/sdk/deleteview/DeleteView;->a(Landroid/graphics/Bitmap;Z)V

    goto :goto_141

    :cond_10d
    invoke-virtual {p1}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMAnimView()Lcom/sdk/deleteview/DeleteView;

    move-result-object p1

    if-nez p1, :cond_114

    goto :goto_141

    :cond_114
    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object p0

    iget-object v0, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v0, v0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Lcom/oplus/icons/OplusFastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/icons/LauncherIcons;->makeAppIconAndBadgeTogether(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string/jumbo p2, "obtain(mContext)\n       …map.icon, drawable.badge)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0, v10}, Lcom/sdk/deleteview/DeleteView;->a(Landroid/graphics/Bitmap;Z)V

    goto :goto_141

    :cond_130
    invoke-virtual {p1}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMAnimView()Lcom/sdk/deleteview/DeleteView;

    move-result-object p0

    if-nez p0, :cond_137

    goto :goto_141

    :cond_137
    iget-object p1, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object p1, p1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v10}, Lcom/sdk/deleteview/DeleteView;->a(Landroid/graphics/Bitmap;Z)V

    :cond_141
    :goto_141
    return-void

    :cond_142
    iget-object v4, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    if-eqz v4, :cond_215

    iget-object v11, v4, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_215

    if-eqz v4, :cond_215

    if-eqz v11, :cond_215

    iget v4, v4, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    and-int/lit8 v11, v4, 0x4

    if-eqz v11, :cond_17f

    iget-object v4, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMNormalView()Lcom/coui/appcompat/imageview/COUIRoundImageView;

    move-result-object v5

    if-nez v5, :cond_161

    goto :goto_164

    :cond_161
    invoke-virtual {v5, v8}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->setImageResource(I)V

    :goto_164
    invoke-virtual {p1}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMNormalView()Lcom/coui/appcompat/imageview/COUIRoundImageView;

    move-result-object v5

    if-nez v5, :cond_16c

    goto/16 :goto_20b

    :cond_16c
    iget-object v6, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v6

    iget-object v7, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v7, v7, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7, v4}, Lcom/android/launcher3/icons/LauncherIcons;->makeAppIconAndBadgeTogether(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_20b

    :cond_17f
    and-int/2addr v4, v9

    if-eqz v4, :cond_1ac

    iget-object v4, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMNormalView()Lcom/coui/appcompat/imageview/COUIRoundImageView;

    move-result-object v5

    if-nez v5, :cond_18f

    goto :goto_192

    :cond_18f
    invoke-virtual {v5, v8}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->setImageResource(I)V

    :goto_192
    invoke-virtual {p1}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMNormalView()Lcom/coui/appcompat/imageview/COUIRoundImageView;

    move-result-object v5

    if-nez v5, :cond_19a

    goto/16 :goto_20b

    :cond_19a
    iget-object v6, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v6

    iget-object v7, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v7, v7, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7, v4}, Lcom/android/launcher3/icons/LauncherIcons;->makeAppIconAndBadgeTogether(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_20b

    :cond_1ac
    iget v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v4, v9, :cond_1fd

    iget-object v4, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v4

    instance-of v5, v4, Lcom/oplus/icons/OplusFastBitmapDrawable;

    if-eqz v5, :cond_1bd

    check-cast v4, Lcom/oplus/icons/OplusFastBitmapDrawable;

    goto :goto_1be

    :cond_1bd
    move-object v4, v7

    :goto_1be
    invoke-virtual {p1}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMNormalView()Lcom/coui/appcompat/imageview/COUIRoundImageView;

    move-result-object v5

    if-nez v5, :cond_1c5

    goto :goto_1c8

    :cond_1c5
    invoke-virtual {v5, v8}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->setImageResource(I)V

    :goto_1c8
    if-nez v4, :cond_1cb

    goto :goto_1cf

    :cond_1cb
    invoke-virtual {v4}, Lcom/oplus/icons/OplusFastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :goto_1cf
    if-nez v7, :cond_1e0

    invoke-virtual {p1}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMNormalView()Lcom/coui/appcompat/imageview/COUIRoundImageView;

    move-result-object v4

    if-nez v4, :cond_1d8

    goto :goto_20b

    :cond_1d8
    iget-object v5, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v5, v5, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_20b

    :cond_1e0
    invoke-virtual {p1}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMNormalView()Lcom/coui/appcompat/imageview/COUIRoundImageView;

    move-result-object v5

    if-nez v5, :cond_1e7

    goto :goto_20b

    :cond_1e7
    iget-object v6, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v6

    iget-object v7, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v7, v7, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Lcom/oplus/icons/OplusFastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Lcom/android/launcher3/icons/LauncherIcons;->makeAppIconAndBadgeTogether(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_20b

    :cond_1fd
    invoke-virtual {p1}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMNormalView()Lcom/coui/appcompat/imageview/COUIRoundImageView;

    move-result-object v4

    if-nez v4, :cond_204

    goto :goto_20b

    :cond_204
    iget-object v5, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v5, v5, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_20b
    invoke-virtual {p1}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMNormalView()Lcom/coui/appcompat/imageview/COUIRoundImageView;

    move-result-object v4

    if-nez v4, :cond_212

    goto :goto_215

    :cond_212
    invoke-virtual {v4, v10}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->setBorderRectRadius(I)V

    :cond_215
    :goto_215
    invoke-virtual {p1}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMTvName()Landroid/widget/TextView;

    move-result-object v4

    if-nez v4, :cond_21c

    goto :goto_229

    :cond_21c
    iget-object v5, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez v5, :cond_222

    move-object v5, v3

    goto :goto_226

    :cond_222
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_226
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_229
    invoke-virtual {p1}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMCheckbox()Lcom/coui/appcompat/checkbox/COUICheckBox;

    move-result-object v4

    if-nez v4, :cond_230

    goto :goto_244

    :cond_230
    iget-object v5, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher/model/UninstallItemInfoWithIcon;

    invoke-virtual {p2}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getSelectFlag()Z

    move-result p2

    if-eqz p2, :cond_240

    const/4 p2, 0x2

    goto :goto_241

    :cond_240
    move p2, v10

    :goto_241
    invoke-virtual {v4, p2}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setState(I)V

    :goto_244
    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_296

    invoke-virtual {v0}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getViewType()I

    move-result p2

    if-nez p2, :cond_296

    sget-object p2, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {p2}, Lcom/android/common/util/PackageUtils$Companion;->getInstance()Lcom/android/common/util/PackageUtils;

    move-result-object p2

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/android/common/util/PackageUtils;->isNeedShowUninstallReminder(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_296

    invoke-virtual {p1}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMTvAlertInfo()Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_26e

    goto :goto_271

    :cond_26e
    invoke-virtual {p2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_271
    invoke-virtual {p1}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMTvUninstallInfo()Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_279

    goto/16 :goto_35b

    :cond_279
    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_282

    goto :goto_28d

    :cond_282
    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :goto_28d
    invoke-static {v0, v3, v2}, Lcom/android/common/util/LauncherUtil;->getRetainInfoFromApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_35b

    :cond_296
    invoke-virtual {v0}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getViewType()I

    move-result p2

    const/16 v0, 0x8

    const-string v4, "format(format, *args)"

    if-ne p2, v9, :cond_2da

    invoke-virtual {p1}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMTvUninstallInfo()Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_2a7

    goto :goto_2cd

    :cond_2a7
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object v1, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1201ce

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "mContext.resources.getSt…ete_icon_panel_sub_title)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v2, v3, v10

    invoke-static {v3, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2cd
    invoke-virtual {p1}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMTvAlertInfo()Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_2d5

    goto/16 :goto_35b

    :cond_2d5
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_35b

    :cond_2da
    invoke-virtual {p1}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMTvAlertInfo()Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_2e1

    goto :goto_2e4

    :cond_2e1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2e4
    iget-object p2, v1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    if-ne p2, v0, :cond_332

    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object p2

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_2f7

    goto :goto_302

    :cond_2f7
    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :goto_302
    invoke-virtual {p2, v3}, Lcom/android/common/multiapp/MultiAppManager;->isMultiAppAdded(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_332

    invoke-virtual {p1}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMTvUninstallInfo()Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_30f

    goto :goto_35b

    :cond_30f
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f120575

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mContext.getString(R.str…anel_multi_app_sub_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v1, v9, [Ljava/lang/Object;

    aput-object v2, v1, v10

    invoke-static {v1, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_35b

    :cond_332
    invoke-virtual {p1}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMTvUninstallInfo()Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_339

    goto :goto_35b

    :cond_339
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f120571

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mContext.getString(R.str…tall_panel_app_sub_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v1, v9, [Ljava/lang/Object;

    aput-object v2, v1, v10

    invoke-static {v1, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_35b
    iget-object p2, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mOnItemClickLitener:Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$OnItemClickLitener;

    if-eqz p2, :cond_369

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/android/launcher/l0;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher/l0;-><init>(Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_369
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;
    .registers 6

    const-string/jumbo p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->getItemCount()I

    move-result p2

    const-string v0, "mLayoutInflater.inflate(…ete_panel, parent, false)"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_22

    new-instance p2, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d010e

    invoke-virtual {p0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_22
    new-instance p2, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d010f

    invoke-virtual {p0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final setOnItemClickLitener(Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$OnItemClickLitener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->mOnItemClickLitener:Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$OnItemClickLitener;

    return-void
.end method
