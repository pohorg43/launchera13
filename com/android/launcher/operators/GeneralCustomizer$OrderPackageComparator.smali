.class Lcom/android/launcher/operators/GeneralCustomizer$OrderPackageComparator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/operators/GeneralCustomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OrderPackageComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/launcher3/model/data/ItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public mOrderPackage:[Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/launcher/operators/GeneralCustomizer;


# direct methods
.method public constructor <init>(Lcom/android/launcher/operators/GeneralCustomizer;[Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/operators/GeneralCustomizer$OrderPackageComparator;->this$0:Lcom/android/launcher/operators/GeneralCustomizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher/operators/GeneralCustomizer$OrderPackageComparator;->mOrderPackage:[Ljava/lang/String;

    return-void
.end method

.method private getOrderIndex(Ljava/lang/String;)I
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/android/launcher/operators/GeneralCustomizer$OrderPackageComparator;->mOrderPackage:[Ljava/lang/String;

    array-length v0, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_1f

    iget-object v3, p0, Lcom/android/launcher/operators/GeneralCustomizer$OrderPackageComparator;->mOrderPackage:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1f
    return v1
.end method


# virtual methods
.method public compare(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfo;)I
    .registers 4

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_d

    :cond_c
    move-object p1, v0

    :goto_d
    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_17

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_17
    invoke-direct {p0, p1}, Lcom/android/launcher/operators/GeneralCustomizer$OrderPackageComparator;->getOrderIndex(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, v0}, Lcom/android/launcher/operators/GeneralCustomizer$OrderPackageComparator;->getOrderIndex(Ljava/lang/String;)I

    move-result p0

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    check-cast p2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/operators/GeneralCustomizer$OrderPackageComparator;->compare(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result p0

    return p0
.end method
