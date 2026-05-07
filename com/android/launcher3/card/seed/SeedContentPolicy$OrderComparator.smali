.class final Lcom/android/launcher3/card/seed/SeedContentPolicy$OrderComparator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/card/seed/SeedContentPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OrderComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;)I
    .registers 4

    const-string/jumbo p0, "p0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "p1"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->getScore()F

    move-result p0

    invoke-virtual {p2}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->getScore()F

    move-result v0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_29

    :cond_1a
    invoke-virtual {p1}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->getScore()F

    move-result p0

    invoke-virtual {p2}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->getScore()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_28

    const/4 p0, -0x1

    goto :goto_29

    :cond_28
    const/4 p0, 0x0

    :goto_29
    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    check-cast p2, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/seed/SeedContentPolicy$OrderComparator;->compare(Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;)I

    move-result p0

    return p0
.end method
