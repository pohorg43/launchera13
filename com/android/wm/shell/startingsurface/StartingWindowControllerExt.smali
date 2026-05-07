.class public Lcom/android/wm/shell/startingsurface/StartingWindowControllerExt;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static sManager:Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;->DEFAULT:Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;

    sput-object v0, Lcom/android/wm/shell/startingsurface/StartingWindowControllerExt;->sManager:Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;

    move-result-object p0

    sput-object p0, Lcom/android/wm/shell/startingsurface/StartingWindowControllerExt;->sManager:Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;

    return-void
.end method

.method public static getManager()Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;
    .registers 1

    sget-object v0, Lcom/android/wm/shell/startingsurface/StartingWindowControllerExt;->sManager:Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;

    return-object v0
.end method
