.class public final synthetic Lcom/android/launcher3/model/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/model/AllAppsList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/AllAppsList;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/a;->a:Lcom/android/launcher3/model/AllAppsList;

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/model/a;->a:Lcom/android/launcher3/model/AllAppsList;

    invoke-static {p0}, Lcom/android/launcher3/model/AllAppsList;->a(Lcom/android/launcher3/model/AllAppsList;)V

    return-void
.end method
