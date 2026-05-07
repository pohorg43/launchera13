.class public final synthetic Lcom/android/wm/shell/bubbles/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/os/UserHandle;

.field public final synthetic d:Landroid/app/NotificationChannel;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/r;->a:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/r;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/r;->c:Landroid/os/UserHandle;

    iput-object p4, p0, Lcom/android/wm/shell/bubbles/r;->d:Landroid/app/NotificationChannel;

    iput p5, p0, Lcom/android/wm/shell/bubbles/r;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/r;->a:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/r;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/r;->c:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/r;->d:Landroid/app/NotificationChannel;

    iget p0, p0, Lcom/android/wm/shell/bubbles/r;->e:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->k(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    return-void
.end method
