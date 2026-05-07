.class public abstract Lcom/android/launcher3/iconrender/AbstractIconRenderer;
.super Lcom/android/launcher3/iconrender/AbstractRenderer;
.source ""

# interfaces
.implements Lcom/android/launcher3/iconrender/IIconRenderer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/launcher3/iconrender/AbstractRenderer;",
        "Lcom/android/launcher3/iconrender/IIconRenderer<",
        "TP;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/iconrender/AbstractRenderer;-><init>(Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)V

    return-void
.end method


# virtual methods
.method public getParams()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
