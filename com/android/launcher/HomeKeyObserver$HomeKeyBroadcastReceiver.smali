.class Lcom/android/launcher/HomeKeyObserver$HomeKeyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/HomeKeyObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HomeKeyBroadcastReceiver"
.end annotation


# static fields
.field public static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/HomeKeyObserver;


# direct methods
.method public constructor <init>(Lcom/android/launcher/HomeKeyObserver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/HomeKeyObserver$HomeKeyBroadcastReceiver;->this$0:Lcom/android/launcher/HomeKeyObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_41

    const-string/jumbo p1, "reason"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_41

    iget-object p2, p0, Lcom/android/launcher/HomeKeyObserver$HomeKeyBroadcastReceiver;->this$0:Lcom/android/launcher/HomeKeyObserver;

    invoke-static {p2}, Lcom/android/launcher/HomeKeyObserver;->access$000(Lcom/android/launcher/HomeKeyObserver;)Lcom/android/launcher/HomeKeyObserver$OnHomeKeyListener;

    move-result-object p2

    if-eqz p2, :cond_41

    const-string p2, "homekey"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2f

    iget-object p0, p0, Lcom/android/launcher/HomeKeyObserver$HomeKeyBroadcastReceiver;->this$0:Lcom/android/launcher/HomeKeyObserver;

    invoke-static {p0}, Lcom/android/launcher/HomeKeyObserver;->access$000(Lcom/android/launcher/HomeKeyObserver;)Lcom/android/launcher/HomeKeyObserver$OnHomeKeyListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher/HomeKeyObserver$OnHomeKeyListener;->onHomeKeyPressed()V

    goto :goto_41

    :cond_2f
    const-string/jumbo p2, "recentapps"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_41

    iget-object p0, p0, Lcom/android/launcher/HomeKeyObserver$HomeKeyBroadcastReceiver;->this$0:Lcom/android/launcher/HomeKeyObserver;

    invoke-static {p0}, Lcom/android/launcher/HomeKeyObserver;->access$000(Lcom/android/launcher/HomeKeyObserver;)Lcom/android/launcher/HomeKeyObserver$OnHomeKeyListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher/HomeKeyObserver$OnHomeKeyListener;->onHomeKeyLongPressed()V

    :cond_41
    :goto_41
    return-void
.end method
