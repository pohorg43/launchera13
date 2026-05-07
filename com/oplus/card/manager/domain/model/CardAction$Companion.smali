.class public final Lcom/oplus/card/manager/domain/model/CardAction$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/card/manager/domain/model/CardAction;
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

    invoke-direct {p0}, Lcom/oplus/card/manager/domain/model/CardAction$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getSeedingAction$default(Lcom/oplus/card/manager/domain/model/CardAction$Companion;Lcom/oplus/card/manager/domain/model/CardAction;Lcom/android/launcher3/card/seed/SeedParams;Ljava/lang/String;ILjava/lang/Object;)Lcom/oplus/card/manager/domain/model/CardAction;
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/card/manager/domain/model/CardAction$Companion;->getSeedingAction(Lcom/oplus/card/manager/domain/model/CardAction;Lcom/android/launcher3/card/seed/SeedParams;Ljava/lang/String;)Lcom/oplus/card/manager/domain/model/CardAction;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final buildClickAction(Ljava/lang/String;)Lcom/oplus/card/manager/domain/model/CardAction;
    .registers 6

    const-string p0, "id"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/card/manager/domain/model/CardAction;

    const/4 v0, 0x1

    new-array v1, v0, [Ly2/i;

    new-instance v2, Ly2/i;

    const-string v3, "click_id"

    invoke-direct {v2, v3, p1}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    invoke-static {v1}, Lz2/c0;->e([Ly2/i;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oplus/card/manager/domain/model/CardAction;-><init>(ILjava/util/Map;)V

    return-object p0
.end method

.method public final getACTION_CONFIG_PULL()Lcom/oplus/card/manager/domain/model/CardAction;
    .registers 1

    invoke-static {}, Lcom/oplus/card/manager/domain/model/CardAction;->access$getACTION_CONFIG_PULL$cp()Lcom/oplus/card/manager/domain/model/CardAction;

    move-result-object p0

    return-object p0
.end method

.method public final getACTION_CREATE()Lcom/oplus/card/manager/domain/model/CardAction;
    .registers 1

    invoke-static {}, Lcom/oplus/card/manager/domain/model/CardAction;->access$getACTION_CREATE$cp()Lcom/oplus/card/manager/domain/model/CardAction;

    move-result-object p0

    return-object p0
.end method

.method public final getACTION_DESTROY()Lcom/oplus/card/manager/domain/model/CardAction;
    .registers 1

    invoke-static {}, Lcom/oplus/card/manager/domain/model/CardAction;->access$getACTION_DESTROY$cp()Lcom/oplus/card/manager/domain/model/CardAction;

    move-result-object p0

    return-object p0
.end method

.method public final getACTION_EXPOSED()Lcom/oplus/card/manager/domain/model/CardAction;
    .registers 1

    invoke-static {}, Lcom/oplus/card/manager/domain/model/CardAction;->access$getACTION_EXPOSED$cp()Lcom/oplus/card/manager/domain/model/CardAction;

    move-result-object p0

    return-object p0
.end method

.method public final getACTION_HIDDEN()Lcom/oplus/card/manager/domain/model/CardAction;
    .registers 1

    invoke-static {}, Lcom/oplus/card/manager/domain/model/CardAction;->access$getACTION_HIDDEN$cp()Lcom/oplus/card/manager/domain/model/CardAction;

    move-result-object p0

    return-object p0
.end method

.method public final getACTION_HIDE()Lcom/oplus/card/manager/domain/model/CardAction;
    .registers 1

    invoke-static {}, Lcom/oplus/card/manager/domain/model/CardAction;->access$getACTION_HIDE$cp()Lcom/oplus/card/manager/domain/model/CardAction;

    move-result-object p0

    return-object p0
.end method

.method public final getACTION_INVALIDATE()Lcom/oplus/card/manager/domain/model/CardAction;
    .registers 1

    invoke-static {}, Lcom/oplus/card/manager/domain/model/CardAction;->access$getACTION_INVALIDATE$cp()Lcom/oplus/card/manager/domain/model/CardAction;

    move-result-object p0

    return-object p0
.end method

.method public final getACTION_PAUSE()Lcom/oplus/card/manager/domain/model/CardAction;
    .registers 1

    invoke-static {}, Lcom/oplus/card/manager/domain/model/CardAction;->access$getACTION_PAUSE$cp()Lcom/oplus/card/manager/domain/model/CardAction;

    move-result-object p0

    return-object p0
.end method

.method public final getACTION_RENDER_FAIL()Lcom/oplus/card/manager/domain/model/CardAction;
    .registers 1

    invoke-static {}, Lcom/oplus/card/manager/domain/model/CardAction;->access$getACTION_RENDER_FAIL$cp()Lcom/oplus/card/manager/domain/model/CardAction;

    move-result-object p0

    return-object p0
.end method

.method public final getACTION_RESUME()Lcom/oplus/card/manager/domain/model/CardAction;
    .registers 1

    invoke-static {}, Lcom/oplus/card/manager/domain/model/CardAction;->access$getACTION_RESUME$cp()Lcom/oplus/card/manager/domain/model/CardAction;

    move-result-object p0

    return-object p0
.end method

.method public final getACTION_SHOW()Lcom/oplus/card/manager/domain/model/CardAction;
    .registers 1

    invoke-static {}, Lcom/oplus/card/manager/domain/model/CardAction;->access$getACTION_SHOW$cp()Lcom/oplus/card/manager/domain/model/CardAction;

    move-result-object p0

    return-object p0
.end method

.method public final getACTION_START()Lcom/oplus/card/manager/domain/model/CardAction;
    .registers 1

    invoke-static {}, Lcom/oplus/card/manager/domain/model/CardAction;->access$getACTION_START$cp()Lcom/oplus/card/manager/domain/model/CardAction;

    move-result-object p0

    return-object p0
.end method

.method public final getACTION_STOP()Lcom/oplus/card/manager/domain/model/CardAction;
    .registers 1

    invoke-static {}, Lcom/oplus/card/manager/domain/model/CardAction;->access$getACTION_STOP$cp()Lcom/oplus/card/manager/domain/model/CardAction;

    move-result-object p0

    return-object p0
.end method

.method public final getACTION_SUBSCRIBED()Lcom/oplus/card/manager/domain/model/CardAction;
    .registers 1

    invoke-static {}, Lcom/oplus/card/manager/domain/model/CardAction;->access$getACTION_SUBSCRIBED$cp()Lcom/oplus/card/manager/domain/model/CardAction;

    move-result-object p0

    return-object p0
.end method

.method public final getACTION_UNSUBSCRIBED()Lcom/oplus/card/manager/domain/model/CardAction;
    .registers 1

    invoke-static {}, Lcom/oplus/card/manager/domain/model/CardAction;->access$getACTION_UNSUBSCRIBED$cp()Lcom/oplus/card/manager/domain/model/CardAction;

    move-result-object p0

    return-object p0
.end method

.method public final getACTION_UPDATE_DATA()Lcom/oplus/card/manager/domain/model/CardAction;
    .registers 1

    invoke-static {}, Lcom/oplus/card/manager/domain/model/CardAction;->access$getACTION_UPDATE_DATA$cp()Lcom/oplus/card/manager/domain/model/CardAction;

    move-result-object p0

    return-object p0
.end method

.method public final getSeedingAction(Lcom/oplus/card/manager/domain/model/CardAction;Lcom/android/launcher3/card/seed/SeedParams;Ljava/lang/String;)Lcom/oplus/card/manager/domain/model/CardAction;
    .registers 8

    const-string p0, "action"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/card/manager/domain/model/CardAction;

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/model/CardAction;->getAction()I

    move-result v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/oplus/card/manager/domain/model/CardAction;-><init>(ILjava/util/Map;)V

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/model/CardAction;->getParam()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1a

    goto :goto_24

    :cond_1a
    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardAction;->getParam()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_21

    goto :goto_24

    :cond_21
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :goto_24
    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardAction;->getParam()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_2b

    goto :goto_7b

    :cond_2b
    if-eqz p2, :cond_7b

    invoke-virtual {p2}, Lcom/android/launcher3/card/seed/SeedParams;->getServiceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "service_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/android/launcher3/card/seed/SeedParams;->getCreateType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "card_create_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/android/launcher3/card/seed/SeedParams;->getCardSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "card_size"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "seedling_entrance"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/android/launcher3/card/seed/SeedParams;->getPageIdGetter()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_60

    goto :goto_68

    :cond_60
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_69

    :goto_68
    move-object v1, v2

    :cond_69
    const-string v3, "page_id"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/android/launcher3/card/seed/SeedParams;->getUpkVersion()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_75

    goto :goto_76

    :cond_75
    move-object v2, p2

    :goto_76
    const-string p2, "upk_version_code"

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7b
    :goto_7b
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p2

    if-eqz p2, :cond_a3

    const-string p2, "SeedingAction: action = "

    invoke-static {p2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/model/CardAction;->getAction()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", param = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardAction;->getParam()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CardAction"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a3
    if-nez p3, :cond_a6

    goto :goto_c7

    :cond_a6
    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardAction;->getParam()Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_ae

    const/4 p1, 0x0

    goto :goto_b6

    :cond_ae
    const-string p2, "life_circle"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_b6
    const-string p2, "update_data"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c7

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardAction;->getParam()Ljava/util/Map;

    move-result-object p1

    const-string p2, "business_data"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c7
    :goto_c7
    return-object p0
.end method
