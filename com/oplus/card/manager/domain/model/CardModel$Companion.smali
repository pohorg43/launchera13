.class public final Lcom/oplus/card/manager/domain/model/CardModel$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/card/manager/domain/model/CardModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/card/manager/domain/model/CardModel$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final sameLifeCircle(Lcom/oplus/card/manager/domain/model/CardAction;Lcom/oplus/card/manager/domain/model/CardAction;)Z
    .registers 4

    const-string p0, "testAction"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "action"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/model/CardAction;->getParam()Ljava/util/Map;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_12

    goto :goto_2f

    :cond_12
    const-string v0, "life_circle"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1d

    goto :goto_2f

    :cond_1d
    invoke-virtual {p2}, Lcom/oplus/card/manager/domain/model/CardAction;->getParam()Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_25

    const/4 p1, 0x0

    goto :goto_2b

    :cond_25
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_2b
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    :goto_2f
    return p1
.end method
