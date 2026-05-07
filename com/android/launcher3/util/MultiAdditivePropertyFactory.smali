.class public Lcom/android/launcher3/util/MultiAdditivePropertyFactory;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MultiAdditivePropertyFactory"


# instance fields
.field private mAggregationOfOthers:F

.field private mLastIndexSet:Ljava/lang/Integer;

.field private final mName:Ljava/lang/String;

.field private final mProperties:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher3/util/MultiAdditivePropertyFactory<",
            "TT;>.MultiAdditiveProperty;>;"
        }
    .end annotation
.end field

.field private final mProperty:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/util/Property;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->mProperties:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->mAggregationOfOthers:F

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->mLastIndexSet:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->mProperty:Landroid/util/Property;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/util/MultiAdditivePropertyFactory;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->lambda$get$0(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lcom/android/launcher3/util/MultiAdditivePropertyFactory;)Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->mLastIndexSet:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/android/launcher3/util/MultiAdditivePropertyFactory;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->mLastIndexSet:Ljava/lang/Integer;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/android/launcher3/util/MultiAdditivePropertyFactory;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->mAggregationOfOthers:F

    return p0
.end method

.method public static synthetic access$102(Lcom/android/launcher3/util/MultiAdditivePropertyFactory;F)F
    .registers 2

    iput p1, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->mAggregationOfOthers:F

    return p1
.end method

.method public static synthetic access$116(Lcom/android/launcher3/util/MultiAdditivePropertyFactory;F)F
    .registers 3

    iget v0, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->mAggregationOfOthers:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->mAggregationOfOthers:F

    return v0
.end method

.method public static synthetic access$200(Lcom/android/launcher3/util/MultiAdditivePropertyFactory;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->mProperties:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/launcher3/util/MultiAdditivePropertyFactory;)Landroid/util/Property;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->mProperty:Landroid/util/Property;

    return-object p0
.end method

.method private synthetic lambda$get$0(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;
    .registers 6

    new-instance p2, Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, v0, p1}, Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;-><init>(Lcom/android/launcher3/util/MultiAdditivePropertyFactory;ILjava/lang/String;)V

    return-object p2
.end method


# virtual methods
.method public apply(Landroid/view/View;F)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->mProperty:Landroid/util/Property;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public get(Ljava/lang/Integer;)Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/android/launcher3/util/MultiAdditivePropertyFactory<",
            "TT;>.MultiAdditiveProperty;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->mProperties:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/launcher3/util/g;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/util/g;-><init>(Lcom/android/launcher3/util/MultiAdditivePropertyFactory;Ljava/lang/Integer;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;

    return-object p0
.end method
