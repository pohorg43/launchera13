.class public final Lcom/android/launcher3/util/OplusTwoPanelUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/util/OplusTwoPanelUtils;

.field private static final TAG:Ljava/lang/String; = "OplusTwoPanelUtils"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/util/OplusTwoPanelUtils;

    invoke-direct {v0}, Lcom/android/launcher3/util/OplusTwoPanelUtils;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/OplusTwoPanelUtils;->INSTANCE:Lcom/android/launcher3/util/OplusTwoPanelUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getScreenPair(ILcom/android/launcher3/util/IntArray;)I
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "orderedScreenIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v0

    const-string v1, "OplusTwoPanelUtils"

    if-eqz v0, :cond_13

    const-string p1, "ordered screen ids is empty!"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_13
    invoke-virtual {p1}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v0

    const/4 v2, 0x1

    move v3, v2

    :goto_19
    if-ge v3, v0, :cond_33

    invoke-virtual {p1, v3}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v4

    if-ne v4, p0, :cond_27

    sub-int/2addr v3, v2

    invoke-virtual {p1, v3}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result p0

    return p0

    :cond_27
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {p1, v5}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v5

    if-ne p0, v5, :cond_30

    return v4

    :cond_30
    add-int/lit8 v3, v3, 0x2

    goto :goto_19

    :cond_33
    const/4 v0, 0x2

    if-le v3, v0, :cond_4f

    const-string p1, "Invalid screenId="

    const-string v0, ", caller= "

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_4f
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result p0

    return p0
.end method
