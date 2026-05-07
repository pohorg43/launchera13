.class final Lcom/android/launcher/touch/ShelfDialog$showBubble$1$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/touch/ShelfDialog;->showBubble(Lcom/android/launcher/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $launcher:Lcom/android/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/touch/ShelfDialog$showBubble$1$1$1;->$launcher:Lcom/android/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .registers 2

    sget-object v0, Lcom/android/launcher/touch/ShelfDialog;->INSTANCE:Lcom/android/launcher/touch/ShelfDialog;

    iget-object p0, p0, Lcom/android/launcher/touch/ShelfDialog$showBubble$1$1$1;->$launcher:Lcom/android/launcher/Launcher;

    invoke-static {v0, p0}, Lcom/android/launcher/touch/ShelfDialog;->access$bubbleDismissAction(Lcom/android/launcher/touch/ShelfDialog;Lcom/android/launcher/Launcher;)V

    return-void
.end method
