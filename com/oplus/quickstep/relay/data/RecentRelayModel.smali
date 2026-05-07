.class public final Lcom/oplus/quickstep/relay/data/RecentRelayModel;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CLICK_INTENT_KEY:Ljava/lang/String; = "click_intent_key"

.field private static final DATA:Ljava/lang/String; = "data"

.field private static final EXTRA_DATA:Ljava/lang/String; = "extra_data"

.field private static final ICON_URL:Ljava/lang/String; = "icon_url"

.field public static final INSTANCE:Lcom/oplus/quickstep/relay/data/RecentRelayModel;

.field public static final START_ACTIVITY:Ljava/lang/String; = "startActivity"

.field public static final START_SERVICE:Ljava/lang/String; = "startService"

.field private static final START_TYPE:Ljava/lang/String; = "start_type"

.field private static final SUB_ICON_URL:Ljava/lang/String; = "sub_icon_url"

.field private static final TAG:Ljava/lang/String; = "RecentRelayModel"

.field private static mDelayData:Lcom/oplus/quickstep/relay/data/RelayData;

.field private static final relayData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/oplus/quickstep/relay/data/RelayData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/relay/data/RecentRelayModel;

    invoke-direct {v0}, Lcom/oplus/quickstep/relay/data/RecentRelayModel;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/relay/data/RecentRelayModel;->INSTANCE:Lcom/oplus/quickstep/relay/data/RecentRelayModel;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/relay/data/RecentRelayModel;->relayData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final postData(Lcom/oplus/quickstep/relay/data/RelayData;)V
    .registers 9

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    goto :goto_e

    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    if-nez p0, :cond_10

    :goto_e
    move-object p0, v0

    goto :goto_14

    :cond_10
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    :goto_14
    if-nez p0, :cond_17

    goto :goto_1d

    :cond_17
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    if-nez v1, :cond_1f

    :goto_1d
    move-object p0, v0

    goto :goto_2c

    :cond_1f
    const/4 v2, 0x0

    new-instance v4, Lcom/oplus/quickstep/relay/data/RecentRelayModel$postData$1;

    invoke-direct {v4, p1, p0, v0}, Lcom/oplus/quickstep/relay/data/RecentRelayModel$postData$1;-><init>(Lcom/oplus/quickstep/relay/data/RelayData;Lcom/android/launcher/Launcher;Lb3/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    move-result-object p0

    :goto_2c
    if-nez p0, :cond_4e

    new-instance v1, Lv3/e;

    const/4 p0, 0x1

    invoke-static {v0, p0}, Li1/j;->a(Lq3/i1;I)Lq3/s;

    move-result-object p0

    sget-object v2, Lq3/q0;->a:Lq3/b0;

    sget-object v2, Lv3/q;->a:Lq3/r1;

    check-cast p0, Lq3/n1;

    invoke-static {p0, v2}, Lb3/f$a$a;->d(Lb3/f$a;Lb3/f;)Lb3/f;

    move-result-object p0

    invoke-direct {v1, p0}, Lv3/e;-><init>(Lb3/f;)V

    const/4 v2, 0x0

    new-instance v4, Lcom/oplus/quickstep/relay/data/RecentRelayModel$postData$2$1;

    invoke-direct {v4, p1, v0}, Lcom/oplus/quickstep/relay/data/RecentRelayModel$postData$2$1;-><init>(Lcom/oplus/quickstep/relay/data/RelayData;Lb3/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    :cond_4e
    return-void
.end method


# virtual methods
.method public final getRelayData()Landroidx/lifecycle/MutableLiveData;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/oplus/quickstep/relay/data/RelayData;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/oplus/quickstep/relay/data/RecentRelayModel;->relayData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final onFoldStateChange(Z)V
    .registers 3

    if-nez p1, :cond_19

    sget-object p0, Lcom/oplus/quickstep/relay/data/RecentRelayModel;->mDelayData:Lcom/oplus/quickstep/relay/data/RelayData;

    if-nez p0, :cond_7

    goto :goto_19

    :cond_7
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_14

    const-string p1, "RecentRelayModel"

    const-string v0, "onFoldStateChange(), post delay data."

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    sget-object p1, Lcom/oplus/quickstep/relay/data/RecentRelayModel;->INSTANCE:Lcom/oplus/quickstep/relay/data/RecentRelayModel;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/relay/data/RecentRelayModel;->postData(Lcom/oplus/quickstep/relay/data/RelayData;)V

    :cond_19
    :goto_19
    return-void
.end method

.method public final updateData(Ljava/lang/String;Lorg/json/JSONObject;Landroid/os/Bundle;)Z
    .registers 15

    const-string v0, "callingPackage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "src"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_a
    const-string v0, "data"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_11

    goto :goto_16

    :catchall_11
    move-exception p2

    invoke-static {p2}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    :goto_16
    instance-of v0, p2, Ly2/j$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    move-object p2, v1

    :cond_1c
    check-cast p2, Lorg/json/JSONArray;

    const/4 v0, 0x0

    const-string v2, "RecentRelayModel"

    if-nez p2, :cond_2f

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_2e

    const-string p0, "updateData(), extra array null, return."

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    return v0

    :cond_2f
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3e

    sput-object v1, Lcom/oplus/quickstep/relay/data/RecentRelayModel;->mDelayData:Lcom/oplus/quickstep/relay/data/RelayData;

    sget-object p0, Lcom/oplus/quickstep/relay/data/RecentRelayModel;->relayData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return v4

    :cond_3e
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    instance-of v3, p2, Lorg/json/JSONObject;

    if-eqz v3, :cond_49

    check-cast p2, Lorg/json/JSONObject;

    goto :goto_4a

    :cond_49
    move-object p2, v1

    :goto_4a
    if-nez p2, :cond_4e

    move-object p2, v1

    goto :goto_54

    :cond_4e
    const-string v3, "extra_data"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    :goto_54
    if-nez p2, :cond_62

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_61

    const-string p0, "updateData(), extraData cast JSONObject error, return."

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_61
    return v0

    :cond_62
    const-string v3, "click_intent_key"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_76

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_75

    const-string p0, "updateData(), click_intent_key null, return."

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_75
    return v0

    :cond_76
    if-nez p3, :cond_79

    goto :goto_82

    :cond_79
    const-class v1, Landroid/content/Intent;

    invoke-virtual {p3, v3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Landroid/content/Intent;

    :goto_82
    move-object v9, v1

    if-nez v9, :cond_91

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_90

    const-string p0, "updateData(), click intent null, return."

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_90
    return v0

    :cond_91
    const-string p3, "start_type"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_a6

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p3

    if-eqz p3, :cond_a4

    const-string p3, "updateData(), START_TYPE null."

    invoke-static {v2, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a4
    const-string p3, "startActivity"

    :cond_a6
    move-object v10, p3

    new-instance p3, Lcom/oplus/quickstep/relay/data/RelayData;

    const-string v0, "icon_url"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "extraData.getString(ICON_URL)"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sub_icon_url"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/oplus/quickstep/relay/data/RelayData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result p1

    if-eqz p1, :cond_d3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_d0

    const-string p0, "updateData(), fold expanded, delay post."

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d0
    sput-object p3, Lcom/oplus/quickstep/relay/data/RecentRelayModel;->mDelayData:Lcom/oplus/quickstep/relay/data/RelayData;

    goto :goto_d6

    :cond_d3
    invoke-direct {p0, p3}, Lcom/oplus/quickstep/relay/data/RecentRelayModel;->postData(Lcom/oplus/quickstep/relay/data/RelayData;)V

    :goto_d6
    return v4
.end method
