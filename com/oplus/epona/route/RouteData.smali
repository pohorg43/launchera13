.class public Lcom/oplus/epona/route/RouteData;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mRequestCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/epona/route/RouteData;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/oplus/epona/route/RouteData;->mRequestCode:I

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/oplus/epona/route/RouteData;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getRequestCode()I
    .registers 1

    iget p0, p0, Lcom/oplus/epona/route/RouteData;->mRequestCode:I

    return p0
.end method
