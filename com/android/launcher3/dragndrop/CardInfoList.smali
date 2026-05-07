.class public final Lcom/android/launcher3/dragndrop/CardInfoList;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/dragndrop/CardInfoList$Companion;,
        Lcom/android/launcher3/dragndrop/CardInfoList$CardIdentify;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/dragndrop/CardInfoList$Companion;

.field public static final TAG:Ljava/lang/String; = "CardInfoList"


# instance fields
.field private final cardIdentifyList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cardIdentifyList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/dragndrop/CardInfoList$CardIdentify;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/dragndrop/CardInfoList$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/dragndrop/CardInfoList$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/dragndrop/CardInfoList;->Companion:Lcom/android/launcher3/dragndrop/CardInfoList$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/dragndrop/CardInfoList$CardIdentify;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cardIdentifyList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/CardInfoList;->cardIdentifyList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getCardIdentifyList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/dragndrop/CardInfoList$CardIdentify;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/CardInfoList;->cardIdentifyList:Ljava/util/List;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Gson().toJson(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
