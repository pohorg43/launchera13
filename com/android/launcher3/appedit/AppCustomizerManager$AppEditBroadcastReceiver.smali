.class public final Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/appedit/AppCustomizerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppEditBroadcastReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver$Companion;
    }
.end annotation


# static fields
.field public static final ALL_EDIT_VALUE:I = 0x11

.field public static final CHOOSE_ICON_KEY:Ljava/lang/String; = "choose_icon_key"

.field public static final Companion:Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver$Companion;

.field public static final MAX_TITLE_COUNT:I = 0x18

.field public static final MAX_TITLE_COUNT_CHINESE:I = 0xc

.field public static final NONE_EDIT_VALUE:I = 0x0

.field public static final ONLY_ICON_EDIT_VALUE:I = 0x10

.field public static final ONLY_TITTLE_EDIT_VALUE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "AppEditBroadcastReceiver"

.field public static final USER_MODIFY_TYPE_KEY:Ljava/lang/String; = "user_modify_type"

.field public static final USER_RESET_TYPE_KEY:Ljava/lang/String; = "user_reset_type"

.field public static final USER_SET_NAME:Ljava/lang/String; = "user_set_name"

.field public static final USE_CHOOSE_COMPONENT:Ljava/lang/String; = "use_choose_component"

.field public static final USE_CHOOSE_PACKAGE:Ljava/lang/String; = "use_choose_package"


# instance fields
.field private mMapReceiver:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Context;",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;->Companion:Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;->mMapReceiver:Ljava/util/Map;

    return-void
.end method

.method public static synthetic registerReceiver$default(Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;Landroid/content/Context;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    sget-object p2, Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver$registerReceiver$1;->INSTANCE:Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver$registerReceiver$1;

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;->registerReceiver(Landroid/content/Context;Lkotlin/jvm/functions/Function4;)V

    return-void
.end method


# virtual methods
.method public final registerReceiver(Landroid/content/Context;Lkotlin/jvm/functions/Function4;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Boolean;",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cxt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callBack"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver$registerReceiver$2;

    invoke-direct {v0, p2}, Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver$registerReceiver$2;-><init>(Lkotlin/jvm/functions/Function4;)V

    iput-object v0, p0, Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.oplus.uxdesign.action.SAVE_CHOOSE_ICON"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;->mMapReceiver:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v1, "null cannot be cast to non-null type android.content.BroadcastReceiver"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "registerReceiver: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "， mReceiver："

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppEdit"

    const-string p2, "AppEditBroadcastReceiver"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final unRegisterReceiver(Landroid/content/Context;)V
    .registers 6

    const-string v0, "cxt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;->mMapReceiver:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_11

    goto :goto_36

    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterReceiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "， mReceiver："

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppEdit"

    const-string v3, "AppEditBroadcastReceiver"

    invoke-static {v2, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_36
    iget-object p0, p0, Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;->mMapReceiver:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
