.class public final Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/rusconfig/RusBaseXmlType1ConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RusXmlConfig"
.end annotation


# instance fields
.field private final configLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$ConfigList;",
            ">;"
        }
    .end annotation
.end field

.field private final itemArrays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$ItemArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;-><init>(Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$ItemArray;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$ConfigList;",
            ">;)V"
        }
    .end annotation

    const-string v0, "itemArrays"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configLists"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;->itemArrays:Ljava/util/List;

    iput-object p2, p0, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;->configLists:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_9

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_12

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_12
    invoke-direct {p0, p1, p2}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;->itemArrays:Ljava/util/List;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;->configLists:Ljava/util/List;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;->copy(Ljava/util/List;Ljava/util/List;)Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$ItemArray;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;->itemArrays:Ljava/util/List;

    return-object p0
.end method

.method public final component2()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$ConfigList;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;->configLists:Ljava/util/List;

    return-object p0
.end method

.method public final copy(Ljava/util/List;Ljava/util/List;)Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$ItemArray;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$ConfigList;",
            ">;)",
            "Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;"
        }
    .end annotation

    const-string p0, "itemArrays"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "configLists"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;

    invoke-direct {p0, p1, p2}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;

    iget-object v1, p0, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;->itemArrays:Ljava/util/List;

    iget-object v3, p1, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;->itemArrays:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object p0, p0, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;->configLists:Ljava/util/List;

    iget-object p1, p1, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;->configLists:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getConfigLists()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$ConfigList;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;->configLists:Ljava/util/List;

    return-object p0
.end method

.method public final getItemArrays()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$ItemArray;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;->itemArrays:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;->itemArrays:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;->configLists:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const-string v0, "RusXmlConfig{itemArrays:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;->itemArrays:Ljava/util/List;

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$ItemArray;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "toString(this)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", configLists:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;->configLists:Ljava/util/List;

    new-array v1, v2, [Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$ConfigList;

    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
