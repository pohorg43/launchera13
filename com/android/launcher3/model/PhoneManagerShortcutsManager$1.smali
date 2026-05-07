.class Lcom/android/launcher3/model/PhoneManagerShortcutsManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/model/PhoneManagerShortcutsManager;-><init>(Landroid/content/Context;Lcom/android/launcher/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/model/PhoneManagerShortcutsManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/model/PhoneManagerShortcutsManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/model/PhoneManagerShortcutsManager$1;->this$0:Lcom/android/launcher3/model/PhoneManagerShortcutsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/model/PhoneManagerShortcutsManager$1;->this$0:Lcom/android/launcher3/model/PhoneManagerShortcutsManager;

    invoke-virtual {p0}, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->addShortcuts()V

    return-void
.end method
