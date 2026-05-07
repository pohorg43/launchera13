.class public final synthetic Ld2/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/WallpaperManager$OnColorsChangedListener;


# instance fields
.field public final synthetic a:Lcom/oplus/uxicon/ui/ui/UxInteractView;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/uxicon/ui/ui/UxInteractView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld2/a;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    return-void
.end method


# virtual methods
.method public final onColorsChanged(Landroid/app/WallpaperColors;I)V
    .registers 3

    iget-object p0, p0, Ld2/a;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    invoke-static {p0, p1, p2}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->d(Lcom/oplus/uxicon/ui/ui/UxInteractView;Landroid/app/WallpaperColors;I)V

    return-void
.end method
