.class public final Lcom/android/launcher3/card/seed/SelectedServiceInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final selectedSize:I

.field private final serviceInfo:Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;


# direct methods
.method public constructor <init>(ILcom/oplus/seedling/sdk/recommendlist/ServiceInfo;)V
    .registers 4

    const-string/jumbo v0, "serviceInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->selectedSize:I

    iput-object p2, p0, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->serviceInfo:Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher3/card/seed/SelectedServiceInfo;ILcom/oplus/seedling/sdk/recommendlist/ServiceInfo;ILjava/lang/Object;)Lcom/android/launcher3/card/seed/SelectedServiceInfo;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget p1, p0, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->selectedSize:I

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->serviceInfo:Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->copy(ILcom/oplus/seedling/sdk/recommendlist/ServiceInfo;)Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->selectedSize:I

    return p0
.end method

.method public final component2()Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->serviceInfo:Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    return-object p0
.end method

.method public final copy(ILcom/oplus/seedling/sdk/recommendlist/ServiceInfo;)Lcom/android/launcher3/card/seed/SelectedServiceInfo;
    .registers 3

    const-string/jumbo p0, "serviceInfo"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;-><init>(ILcom/oplus/seedling/sdk/recommendlist/ServiceInfo;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    iget v1, p0, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->selectedSize:I

    iget v3, p1, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->selectedSize:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object p0, p0, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->serviceInfo:Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    iget-object p1, p1, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->serviceInfo:Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public final getSelectedSize()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->selectedSize:I

    return p0
.end method

.method public final getServiceInfo()Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->serviceInfo:Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->selectedSize:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->serviceInfo:Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "SelectedServiceInfo(selectedSize="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->selectedSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serviceInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->serviceInfo:Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
