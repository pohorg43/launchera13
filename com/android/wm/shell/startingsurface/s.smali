.class public final synthetic Lcom/android/wm/shell/startingsurface/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lcom/android/wm/shell/startingsurface/s;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/wm/shell/startingsurface/s;

    invoke-direct {v0}, Lcom/android/wm/shell/startingsurface/s;-><init>()V

    sput-object v0, Lcom/android/wm/shell/startingsurface/s;->a:Lcom/android/wm/shell/startingsurface/s;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/wm/shell/startingsurface/StartingWindowController;

    invoke-static {p1}, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;->b(Lcom/android/wm/shell/startingsurface/StartingWindowController;)V

    return-void
.end method
