.class public final synthetic Lcom/android/launcher3/hotseatexpand/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/hotseatexpand/b;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/launcher3/hotseatexpand/b;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/launcher3/hotseatexpand/b;->c:Ljava/util/ArrayList;

    iput-boolean p4, p0, Lcom/android/launcher3/hotseatexpand/b;->d:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/hotseatexpand/b;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/hotseatexpand/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/hotseatexpand/b;->c:Ljava/util/ArrayList;

    iget-boolean p0, p0, Lcom/android/launcher3/hotseatexpand/b;->d:Z

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->a(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/ArrayList;ZLjava/util/ArrayList;)V

    return-void
.end method
