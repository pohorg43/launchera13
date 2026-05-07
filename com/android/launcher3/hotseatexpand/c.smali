.class public final synthetic Lcom/android/launcher3/hotseatexpand/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/launcher3/hotseatexpand/c;->a:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/hotseatexpand/c;->a:Z

    invoke-static {p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->a(Z)V

    return-void
.end method
