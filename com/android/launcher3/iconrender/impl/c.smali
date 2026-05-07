.class public final synthetic Lcom/android/launcher3/iconrender/impl/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer$IShimmerViewProvider;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/c;->a:Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;

    return-void
.end method


# virtual methods
.method public final getShimmerView()Lcom/android/launcher/shimmer/IShimmerView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/c;->a:Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;

    invoke-static {p0}, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;->c(Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;)Lcom/android/launcher/shimmer/IShimmerView;

    move-result-object p0

    return-object p0
.end method
