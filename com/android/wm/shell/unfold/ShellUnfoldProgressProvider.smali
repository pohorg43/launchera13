.class public interface abstract Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$UnfoldListener;
    }
.end annotation


# static fields
.field public static final NO_PROVIDER:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$1;

    invoke-direct {v0}, Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$1;-><init>()V

    sput-object v0, Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;->NO_PROVIDER:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;

    return-void
.end method


# virtual methods
.method public addListener(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$UnfoldListener;)V
    .registers 3

    return-void
.end method
