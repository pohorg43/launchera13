.class Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->e:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(IIII)Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;
    .registers 7

    sget-object v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->e:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1e

    sget-object v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->e:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_2d

    iput v2, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->a:I

    iput v2, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->b:I

    iput v2, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->c:I

    iput v2, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->d:I

    goto :goto_24

    :cond_1e
    :try_start_1e
    new-instance v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;

    invoke-direct {v1}, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;-><init>()V

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_2d

    :goto_24
    iput p0, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->d:I

    iput p1, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->a:I

    iput p2, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->b:I

    iput p3, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->c:I

    return-object v1

    :catchall_2d
    move-exception p0

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p0
.end method


# virtual methods
.method public b()V
    .registers 4

    sget-object v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->e:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_11

    sget-object v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method
