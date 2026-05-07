.class public final synthetic Lcom/android/launcher3/k0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/k0;->a:Lcom/android/launcher3/Launcher;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/k0;->a:Lcom/android/launcher3/Launcher;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/launcher3/LauncherAppStateOplusExtImpl$ShortcutUpdateTask;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/LauncherAppStateOplusExtImpl;->d(Lcom/android/launcher3/Launcher;Ljava/lang/String;Lcom/android/launcher3/LauncherAppStateOplusExtImpl$ShortcutUpdateTask;)V

    return-void
.end method
