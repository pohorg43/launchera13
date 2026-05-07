.class public final Lcom/oplus/seedling/sdk/entity/ShortcutsConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final extras:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private icon:Landroid/graphics/drawable/Drawable;

.field private intent:Landroid/content/Intent;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/Intent;Landroid/util/ArrayMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/seedling/sdk/entity/ShortcutsConfig;->icon:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/oplus/seedling/sdk/entity/ShortcutsConfig;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/seedling/sdk/entity/ShortcutsConfig;->intent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/oplus/seedling/sdk/entity/ShortcutsConfig;->extras:Landroid/util/ArrayMap;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/Intent;Landroid/util/ArrayMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_5

    const/4 p4, 0x0

    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/seedling/sdk/entity/ShortcutsConfig;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/Intent;Landroid/util/ArrayMap;)V

    return-void
.end method


# virtual methods
.method public final getExtras()Landroid/util/ArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/seedling/sdk/entity/ShortcutsConfig;->extras:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/entity/ShortcutsConfig;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getIntent()Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/entity/ShortcutsConfig;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/entity/ShortcutsConfig;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/seedling/sdk/entity/ShortcutsConfig;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setIntent(Landroid/content/Intent;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/seedling/sdk/entity/ShortcutsConfig;->intent:Landroid/content/Intent;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/seedling/sdk/entity/ShortcutsConfig;->title:Ljava/lang/String;

    return-void
.end method
