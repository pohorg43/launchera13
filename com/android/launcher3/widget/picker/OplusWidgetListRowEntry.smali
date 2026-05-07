.class public final Lcom/android/launcher3/widget/picker/OplusWidgetListRowEntry;
.super Lcom/android/launcher3/widget/model/WidgetsListContentEntry;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/picker/OplusWidgetListRowEntry$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/widget/picker/OplusWidgetListRowEntry$Companion;

.field private static final PACKAGE_ARLARM_CLOCK:Ljava/lang/String;

.field private static final RANK_SORT_INDEX_THREE:I = -0x3


# instance fields
.field private rank:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/widget/picker/OplusWidgetListRowEntry$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/picker/OplusWidgetListRowEntry$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/widget/picker/OplusWidgetListRowEntry;->Companion:Lcom/android/launcher3/widget/picker/OplusWidgetListRowEntry$Companion;

    const v0, 0x7f120053

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/widget/picker/OplusWidgetListRowEntry;->PACKAGE_ARLARM_CLOCK:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/PackageItemInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pkgItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;-><init>(Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/lang/String;Ljava/util/List;)V

    sget-object p2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p2}, Lcom/android/common/util/AppFeatureUtils;->isSupportGameBounce()Z

    move-result p2

    if-eqz p2, :cond_21

    iget-object p2, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.android.settings"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_21

    const/4 p1, -0x3

    goto :goto_42

    :cond_21
    sget-object p2, Lcom/android/launcher3/widget/picker/OplusWidgetListRowEntry;->PACKAGE_ARLARM_CLOCK:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object p1, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    const/4 p1, -0x2

    goto :goto_42

    :cond_33
    invoke-interface {p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lcom/android/common/util/s;->f:Lcom/android/common/util/s;

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_41

    const/4 p1, -0x1

    goto :goto_42

    :cond_41
    const/4 p1, 0x0

    :goto_42
    iput p1, p0, Lcom/android/launcher3/widget/picker/OplusWidgetListRowEntry;->rank:I

    return-void
.end method

.method private static final _init_$lambda-0(Lcom/android/launcher3/model/WidgetItem;)Z
    .registers 2

    const-string v0, "item"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/model/WidgetItem;->cardConfigInfo:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public static synthetic a(Lcom/android/launcher3/model/WidgetItem;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/widget/picker/OplusWidgetListRowEntry;->_init_$lambda-0(Lcom/android/launcher3/model/WidgetItem;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getPACKAGE_ARLARM_CLOCK$cp()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/launcher3/widget/picker/OplusWidgetListRowEntry;->PACKAGE_ARLARM_CLOCK:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getRank()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/widget/picker/OplusWidgetListRowEntry;->rank:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mWidgets:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
