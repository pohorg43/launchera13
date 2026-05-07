.class public Lcom/oplus/compat/utils/util/AdapterHelper;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/compat/utils/util/AdapterHelper;->initCompat(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/oplus/epona/Epona;->init(Landroid/content/Context;)V

    return-void
.end method

.method private static initCompat(Landroid/content/Context;)V
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method
